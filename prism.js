// prism.js — brain of the "Prism" Max for Live device.
// A prism splits white light into colours; Prism splits your KEYBOARD into colour zones and lights
// your WLED lamps from what you play. It emits the open wled-midi convention (`lamp` mode) to a MIDI
// port named "OpenLamp" — a wled-midi implementation (the engine, the browser tool, the Bome pack…)
// turns each message into WLED JSON. Inspired by zone.js (the keyboard-zone idea), but lighting-first:
// no instrument routing here, just light.
//
// What it does: up to three pitch zones (Low / Mid / High), each bound to a wled-midi "look" (a colour).
// Play a note and the lamp takes the colour of the zone the *governing* note falls in; velocity sets
// brightness. When the last note lifts, Prism either holds the last colour or blacks out (your choice).
//
// Signal path:  midiin -> midiparse -> [js prism.js] -> midiout OpenLamp
//
// MIT — free to use, modify and share.

autowatch = 1;
outlets = 1;   // 0 = wled-midi out (looks + brightness CC) -> midiout OpenLamp

// --- wled-midi vocabulary (see https://github.com/openlamp/wled-midi/blob/main/SPEC.md) --------------
// Looks are note-ons 59..68 on the lamp channel; brightness is CC 1 (0..127). We target channel `chan`
// (1 = all lamps; raise it to address a group in a multi-zone WLED setup).
var LOOK = { black:59, red:60, orange:61, yellow:62, green:63, cyan:64, blue:65, magenta:66, white:67, effect:68 };
var LOOK_NAMES = ["black","red","orange","yellow","green","cyan","blue","magenta","white","effect"];

// --- config (all driven from Live params, no hardcoding) --------------------------------------------
var split1 = 52, split2 = 72;     // zone boundaries: Low < split1 <= Mid < split2 <= High (MIDI notes)
var loLook = 65, midLook = 63, hiLook = 60;   // each zone's look note (default blue / green / red)
var chan = 1;                     // wled-midi channel (1 = all lamps)
var govern = 0;                   // which held note governs the colour: 0 = lowest, 1 = highest, 2 = most-recent
var holdOnRelease = 1;            // 1 = keep the last colour when all notes lift ; 0 = black out
var brightness = 1;              // 1 = velocity sets brightness (CC1) ; 0 = colour only
var enabled = 1;

var held = [];                    // stack of currently-held input pitches, in arrival order
var curLook = -1;                 // the look currently shown on the lamp (-1 = none/black) — so we only send on change

function clamp(v, a, b) { v = Math.round(v); return v < a ? a : (v > b ? b : v); }
function zoneLook(p) { return p < split1 ? loLook : (p < split2 ? midLook : hiLook); }

// The note that governs the colour, per the `govern` mode.
function governing() {
    if (!held.length) return -1;
    if (govern === 2) return held[held.length - 1];           // most-recent
    var g = held[0];
    for (var i = 1; i < held.length; i++) {
        if (govern === 1 ? held[i] > g : held[i] < g) g = held[i];  // highest / lowest
    }
    return g;
}

// Push the current colour (and brightness) to the lamp, only when it actually changes.
function paint(vel) {
    var g = governing();
    var look = (g < 0) ? (holdOnRelease ? curLook : LOOK.black) : zoneLook(g);
    if (look < 0) return;
    var st = 0x90 + (chan - 1);
    if (look !== curLook) { outlet(0, [st, look, 127]); curLook = look; }   // a look = one note-on
    if (brightness && vel > 0) outlet(0, [0xB0 + (chan - 1), 1, clamp(vel, 1, 127)]);  // CC1 = brightness
}

function noteOn(p, v) {
    for (var i = held.length - 1; i >= 0; i--) if (held[i] === p) held.splice(i, 1);   // dedupe re-triggers
    held.push(p);
    paint(v);
}
function noteOff(p) {
    for (var i = held.length - 1; i >= 0; i--) if (held[i] === p) held.splice(i, 1);
    paint(0);
}
function list(pitch, velocity) {
    if (!enabled) return;
    if (velocity > 0) noteOn(pitch, velocity); else noteOff(pitch);
}
function allOff() { held = []; if (!holdOnRelease) { outlet(0, [0x90 + (chan - 1), LOOK.black, 127]); curLook = LOOK.black; } }

// --- Live param setters ------------------------------------------------------------------------------
function on(v)        { enabled = v ? 1 : 0; if (!enabled) allOff(); }
function s1(v)        { split1 = clamp(v, 0, 127); }
function s2(v)        { split2 = clamp(v, 0, 127); if (split2 < split1) split2 = split1; }
function lolook(v)    { loLook = clamp(v, 59, 68); }     // a 0..9 index would also work; we take the raw look note
function midlook(v)   { midLook = clamp(v, 59, 68); }
function hilook(v)    { hiLook = clamp(v, 59, 68); }
function channel(v)   { chan = clamp(v, 1, 16); }
function governmode(v){ govern = clamp(v, 0, 2); }       // 0 lowest / 1 highest / 2 most-recent
function hold(v)      { holdOnRelease = v ? 1 : 0; }
function bri(v)       { brightness = v ? 1 : 0; }
function panic()      { held = []; outlet(0, [0x90 + (chan - 1), LOOK.black, 127]); curLook = LOOK.black; }
function loadbang()   { curLook = -1; }                  // Live restores params after this; first note repaints
