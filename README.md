# Prism — turn your playing into colour, on WLED

![Prism — Max for Live MIDI device](prism-device.png)

A **Max for Live MIDI device** that lights your **WLED** lamps from what you play. Split the keyboard
into up to **three colour zones** — play low and the lamp glows one colour, higher up another — with
**velocity → brightness**. A prism splits white light into colours; **Prism** splits your keyboard into
colours.

It's the lighting-first cousin of [**zone-m4l**](https://github.com/Beennnn/zone-m4l): same idea of
keyboard *zones*, but instead of routing notes to instruments, each zone drives a **WLED colour**. Under
the hood it speaks the open [**wled-midi**](https://github.com/openlamp/wled-midi) convention (`lamp`
mode), so any wled-midi implementation turns it into light.

## Get it

1. Download **`prism.amxd`**.
2. Drop it on a **MIDI track** in Ableton Live (before or without an instrument — it doesn't consume your
   notes, it mirrors them into light).
3. Create a virtual MIDI port named **`OpenLamp`** (macOS: Audio MIDI Setup → IAC Driver; Windows:
   [loopMIDI](https://www.tobias-erichsen.de/software/loopmidi.html)) and point a
   [wled-midi implementation](https://github.com/openlamp/wled-midi#implementations) — the
   [engine](https://github.com/openlamp/engine), the [browser tool](https://github.com/openlamp/wled-midi-web),
   or the [Bome pack](https://github.com/openlamp/bome) — at your WLED device.
4. Requires Live with Max for Live (Suite, or Standard + M4L).

## How it works

Prism watches the notes you play, decides which **zone** the *governing* note falls in, and sends that
zone's **colour** (a wled-midi "look") plus a **brightness** (CC 1, from velocity) to the `OpenLamp`
port. It only sends on an actual colour change, so it never floods the port.

```
midiin → midiparse → [js prism.js] → midiout OpenLamp     (looks + brightness → wled-midi `lamp`)
```

## Every field

| Field | Default | Impact |
|---|---|---|
| **On** | on | Master enable. Off = Prism stops driving the lamp (and blacks out if *Hold* is off). |
| **Split1** | 52 | Boundary between the **Low** and **Mid** zones (MIDI note). Notes `< Split1` are Low. |
| **Split2** | 72 | Boundary between **Mid** and **High**. `Split1 ≤ note < Split2` = Mid; `≥ Split2` = High. |
| **LoCol / MidCol / HiCol** | 65 / 63 / 60 | Each zone's colour as a wled-midi **look note**: 59 black · 60 red · 61 orange · 62 yellow · 63 green · 64 cyan · 65 blue · 66 magenta · 67 white · 68 effect. Defaults = blue / green / red. |
| **Chan** | 1 | wled-midi channel (1 = all lamps; raise it to address a group in a multi-zone WLED setup). |
| **Govern** | 0 | Which held note picks the colour: **0** = lowest, **1** = highest, **2** = most-recent. |
| **Hold** | on | On = keep the last colour when all notes lift. Off = black out on release. |
| **Bri** | on | On = velocity sets brightness (CC 1). Off = colour only, brightness untouched. |

## Why "governing note"?

When you hold a chord that straddles two zones, *something* has to decide the colour. **Govern** is that
rule — lowest note (bass-led, the default), highest note (melody-led), or the most-recently played. Pick
whichever matches how you want the light to follow your hands.

## Under the hood

| File | Purpose |
|---|---|
| `prism.amxd` | the device, ready to drop into Live |
| `prism.js` | the brain — zone → colour logic, governing-note selection, change-only output |
| `prism.maxpat` | the patcher (UI + wiring), kept in sync with the device |

`prism.js` runs with `autowatch = 1` — edit it next to the device and Max hot-reloads it.

## Try it in the browser

Open [`prism-demo.html`](prism-demo.html) — move the two split points and see the three colour zones and
the lamp colour they produce.

## License

MIT — see [LICENSE](LICENSE).

---

**Two open standards, one bridge.** Prism emits the open [**wled-midi**](https://github.com/openlamp/wled-midi)
convention — the agreed dictionary between [**MIDI**](https://midi.org) (the MIDI Association) and
[**WLED**](https://kno.wled.ge). Free for anyone to build on; part of the
[OpenLamp](https://github.com/openlamp) ecosystem.
