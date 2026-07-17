{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      -299.0,
      -851.0,
      872.0,
      658.0
    ],
    "openrect": [
      0.0,
      0.0,
      0.0,
      169.0
    ],
    "openrectmode": 0,
    "openinpresentation": 1,
    "boxanimatetime": 500,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.0,
            40.0,
            50.0,
            22.0
          ],
          "text": "midiin"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 7,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            30.0,
            80.0,
            120.0,
            22.0
          ],
          "text": "midiparse"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            30.0,
            300.0,
            100.0,
            22.0
          ],
          "saved_object_attributes": {
            "filename": "prism.js",
            "parameter_enable": 0
          },
          "text": "js prism.js"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            360.0,
            110.0,
            22.0
          ],
          "text": "midiout OpenLamp"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "live.toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            40.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            40.0,
            15.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_longname": "on",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "On",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "varname": "on"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            40.0,
            110.0,
            22.0
          ],
          "text": "prepend on"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            70.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            70.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                52
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "s1_split",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_modmode": 0,
              "parameter_shortname": "Split1",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "s1_split"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            70.0,
            110.0,
            22.0
          ],
          "text": "prepend s1"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            100.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            100.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                72
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "s2_split",
              "parameter_mmin": 0,
              "parameter_mmax": 127,
              "parameter_modmode": 0,
              "parameter_shortname": "Split2",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "s2_split"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            100.0,
            110.0,
            22.0
          ],
          "text": "prepend s2"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            130.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            130.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                65
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "lo_colour",
              "parameter_mmin": 59,
              "parameter_mmax": 68,
              "parameter_modmode": 0,
              "parameter_shortname": "LoCol",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "lo_colour"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            130.0,
            110.0,
            22.0
          ],
          "text": "prepend lolook"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            160.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            160.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                63
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "mid_colour",
              "parameter_mmin": 59,
              "parameter_mmax": 68,
              "parameter_modmode": 0,
              "parameter_shortname": "MidCol",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "mid_colour"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            160.0,
            110.0,
            22.0
          ],
          "text": "prepend midlook"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            190.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            190.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                60
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "hi_colour",
              "parameter_mmin": 59,
              "parameter_mmax": 68,
              "parameter_modmode": 0,
              "parameter_shortname": "HiCol",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "hi_colour"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            190.0,
            110.0,
            22.0
          ],
          "text": "prepend hilook"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            220.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            220.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "wled_channel",
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_modmode": 0,
              "parameter_shortname": "Chan",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "wled_channel"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            220.0,
            110.0,
            22.0
          ],
          "text": "prepend channel"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            250.0,
            60.0,
            15.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            250.0,
            40.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "govern",
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "Govern",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "textjustification": 2,
          "varname": "govern"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            250.0,
            110.0,
            22.0
          ],
          "text": "prepend governmode"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "live.toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            280.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            280.0,
            15.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_longname": "hold_on_release",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Hold",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "varname": "hold_on_release"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            280.0,
            110.0,
            22.0
          ],
          "text": "prepend hold"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "live.toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "parameter_enable": 1,
          "patching_rect": [
            200.0,
            310.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            200.0,
            310.0,
            15.0,
            15.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_longname": "brightness",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Bri",
              "parameter_type": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          },
          "varname": "brightness"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            360.0,
            310.0,
            110.0,
            22.0
          ],
          "text": "prepend bri"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            500.0,
            40.0,
            140.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            60.0,
            40.0,
            120.0,
            16.0
          ],
          "text": "Prism \u2014 MIDI to WLED colour"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-2",
            0
          ],
          "source": [
            "obj-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-13",
            0
          ],
          "source": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
            0
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-21",
            0
          ],
          "source": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-23",
            0
          ],
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-29",
            0
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-29",
            0
          ]
        }
      }
    ],
    "parameters": {
      "parameterbanks": {},
      "inherited_shortname": 1,
      "obj-10": [
        "on",
        "On",
        0
      ],
      "obj-12": [
        "s1_split",
        "Split1",
        0
      ],
      "obj-14": [
        "s2_split",
        "Split2",
        0
      ],
      "obj-16": [
        "lo_colour",
        "LoCol",
        0
      ],
      "obj-18": [
        "mid_colour",
        "MidCol",
        0
      ],
      "obj-20": [
        "hi_colour",
        "HiCol",
        0
      ],
      "obj-22": [
        "wled_channel",
        "Chan",
        0
      ],
      "obj-24": [
        "govern",
        "Govern",
        0
      ],
      "obj-26": [
        "hold_on_release",
        "Hold",
        0
      ],
      "obj-28": [
        "brightness",
        "Bri",
        0
      ]
    },
    "latency": 0,
    "is_mpe": 0,
    "external_mpe_tuning_enabled": 0,
    "minimum_live_version": "",
    "minimum_max_version": "",
    "platform_compatibility": 0,
    "project": {
      "version": 1,
      "creationdate": 3590052786,
      "modificationdate": 3590052786,
      "viewrect": [
        0.0,
        0.0,
        300.0,
        500.0
      ],
      "autoorganize": 1,
      "hideprojectwindow": 1,
      "showdependencies": 1,
      "autolocalize": 0,
      "contents": {
        "patchers": {}
      },
      "layout": {},
      "searchpath": {},
      "detailsvisible": 0,
      "amxdtype": 1835887981,
      "readonly": 0,
      "devpathtype": 0,
      "devpath": ".",
      "sortmode": 0,
      "viewmode": 0,
      "includepackages": 0
    },
    "autosave": 0,
    "styles": [
      {
        "name": "comment001",
        "default": {
          "fontface": [
            0
          ],
          "fontsize": [
            12.0
          ]
        },
        "parentstyle": "",
        "multi": 0
      }
    ],
    "saved_attribute_attributes": {
      "default_plcolor": {
        "expression": ""
      }
    },
    "oscreceiveudpport": 0
  }
}