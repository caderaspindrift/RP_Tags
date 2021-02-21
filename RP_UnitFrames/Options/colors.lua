local addOnName, ns = ...;
local RPTAGS = RPTAGS;
local Module = RPTAGS.queue:GetModule(addOnName);

Module:WaitUntil("MODULE_G",
function(self, event, ...)

  local loc               = RPTAGS.utils.locale.loc;
  local Get               = RPTAGS.utils.config.get;
  local Set               = RPTAGS.utils.config.set;
  local Default           = RPTAGS.utils.config.default;
  local addOptions        = RPTAGS.utils.modules.addOptions;
  local addOptionsPanel   = RPTAGS.utils.modules.addOptionsPanel;
  local source_order      = RPTAGS.utils.options.source_order;
  local Checkbox          = RPTAGS.utils.options.checkbox
  local Color_Picker      = RPTAGS.utils.options.color_picker
  local Common            = RPTAGS.utils.options.common
  local Dropdown          = RPTAGS.utils.options.dropdown
  local Header            = RPTAGS.utils.options.header
  local Instruct          = RPTAGS.utils.options.instruct
  local Keybind           = RPTAGS.utils.options.keybind
  local Pushbutton        = RPTAGS.utils.options.pushbutton
  local Spacer            = RPTAGS.utils.options.spacer
  local Reset             = RPTAGS.utils.options.reset
  local Frame_Scaler      = RPTAGS.utils.options.frame_scaler
  local Dim_Slider = RPTAGS.utils.options.dimensions_slider;
  local TagPanel          = RPTAGS.utils.options.tagpanel;
  local reqRPUF           = RPTAGS.utils.options.requiresRPUF;
  local collectionBrowser = RPTAGS.utils.options.collectionBrowser;
  local Font              = RPTAGS.utils.options.font;
  local split             = RPTAGS.utils.text.split;
  local listOfAllTags     = RPTAGS.utils.options.listOfAllTags;
  local ifConfig          = RPTAGS.utils.config.ifConfig;
  local Frame_Panel       = RPTAGS.utils.options.frame_panel;

  local function build_frame_colors(unit)
    unit = unit:upper();
    return 
    { type = "group",
      name = loc(unit .. "FRAME"),
      inline = true,
      order = source_order(),
      hidden = 
        function() 
          return
                Get("DISABLE_RPUF") or
            not Get("SHOW_FRAME_" .. unit) or
                Get("LINK_FRAME_" .. unit) 
        end,
      args =
      { background = Color_Picker("RPUF_" .. unit),
        text       = Color_Picker("RPUF_TEXT_" .. unit),
        tooltip    = Color_Picker("RPUF_TOOLTIP_" .. unit),
      }
    };
  end;

  local menu = {};
  menu.backdrop  =
  { BLIZZTOOLTIP = loc("BACKDROP_BLIZZTOOLTIP" ),
    THIN_LINE    = loc("BACKDROP_ORIGINAL"     ),
    THICK_LINE   = loc("BACKDROP_THICK_LINE"   ),
    ORIGINAL     = loc("BACKDROP_THIN_LINE"    ), };
  menu.texture   =
  { BAR          = loc("BAR"                   ),
    SKILLS       = loc("SKILLS"                ),
    BLANK        = loc("BLANK"                 ),
    SHADED       = loc("SHADED"                ),
    SOLID        = loc("SOLID"                 ),
    RAID         = loc("RAID"                  ), };
  menu.align     =
  { LEFT         = loc("LEFT"                  ),
    CENTER       = loc("CENTER"                ),
    RIGHT        = loc("RIGHT"                 ), };
  menu.small     =
  { COMPACT      = loc("RPUF_COMPACT"          ),
    ABRIDGED     = loc("RPUF_ABRIDGED"         ),
    THUMBNAIL    = loc("RPUF_THUMBNAIL"        ), };
  menu.large     =
  { COMPACT      = loc("RPUF_COMPACT"          ),
    ABRIDGED     = loc("RPUF_ABRIDGED"         ),
    THUMBNAIL    = loc("RPUF_THUMBNAIL"        ),
    PAPERDOLL    = loc("RPUF_PAPERDOLL"        ),
    FULL         = loc("RPUF_FULL"             ), };

  addOptions(addOnName, "colors",
  { rpuf =
    { type                    = "group",
      childGroups             = "inline",
      name                    = loc("OPT_COLORS_RPUF"),
      order                   = source_order(),
      hidden                  = reqRPUF,
      args                    =
      { header            = Header("colors rpuf"),
        background        = Color_Picker("rpuf"),
        text         = Color_Picker("rpuf text"),
        tooltip      = Color_Picker("rpuf tooltip"),
        player = build_frame_colors("player"),
        target = build_frame_colors("target"),
        focus = build_frame_colors("focus"),
        targetTarget = build_frame_colors("targettarget"),
        -- reset              = Reset( { "color rpuf", "color rpuf text", "color rpuf tooltip" } , nil, reqRPUF ),
      },
    },
  });
end);
