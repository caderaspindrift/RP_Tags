-- RP Tags
-- by Oraibi, Moon Guard (US) server
-- ------------------------------------------------------------------------------
--
-- This work is licensed under the Creative Commons Attribution 4.0 International
-- (CC BY 4.0) 

local addOnName, addOn = ...;
local RPTAGS = RPTAGS;
local Module = RPTAGS.queue:GetModule(addOnName);

Module:WaitUntil("MODULE_J",
function(self, event, ...)

  local RP_TagsDB          = RP_TagsDB;
  local oUF                = _G[GetAddOnMetadata(addOnName, "X-oUF")]; -- auto-added by oUF
  local CONST              = RPTAGS.CONST;
  local Utils              = RPTAGS.utils;
  local Config             = Utils.config;
  local frameUtils         = Utils.frames;
  local allFrameUtils      = Utils.frames.all;
  local FRAME_NAMES        = CONST.FRAMES.NAMES;
  local eval               = Utils.tags.eval;
  local split              = Utils.text.split;

  local getLeft            = frameUtils.panels.layout.getLeft;
  local getTop             = frameUtils.panels.layout.getTop;
  local getPoint           = frameUtils.panels.layout.getPoint;
  local getHeight          = frameUtils.panels.size.getHeight;
  local getWidth           = frameUtils.panels.size.getWidth;
  local getJustifyH        = frameUtils.panels.align.getH;
  local getVis             = frameUtils.panels.layout.getVis;

  local getFrameDimensions = frameUtils.size.get;
  local fontFile           = frameUtils.font.getFile;
  local fontSize           = frameUtils.font.getSize;

  local scaleFrame         = frameUtils.size.scale.set;
  local lockFrames         = frameUtils.all.move.lock;
  local toRGB              = Utils.color.hexaToNumber;
  local openEditor         = Utils.config.openEditor;

  local panelList =
  { name      = { setting          = "NAMEPANEL",   tooltip = "NAME_TOOLTIP"      },
    info      = { setting          = "INFOPANEL",   tooltip = "INFO_TOOLTIP"      },
    details   = { setting          = "DETAILPANEL", tooltip = "DETAIL_TOOLTIP"    },
    icon1     = { setting          = "ICON_1",      tooltip = "ICON_1_TOOLTIP"    },
    icon2     = { setting          = "ICON_2",      tooltip = "ICON_2_TOOLTIP"    },
    icon3     = { setting          = "ICON_3",      tooltip = "ICON_3_TOOLTIP"    },
    icon4     = { setting          = "ICON_4",      tooltip = "ICON_4_TOOLTIP"    },
    icon5     = { setting          = "ICON_5",      tooltip = "ICON_5_TOOLTIP"    },
    icon6     = { setting          = "ICON_6",      tooltip = "ICON_6_TOOLTIP"    },
    portrait  = { no_tag_string    = true,          tooltip = "PORTRAIT_TOOLTIP",
                  portrait         = true                                         },
    statusbar = { setting          = "STATUSPANEL", tooltip = "STATUS_TOOLTIP",
                  has_own_backdrop = true,
                  has_own_align    = true,                                        },
  };

  function showContextMenu(self, event, ...) 
    print("context menu for", self.name); 
  end;

  function showTooltip(self, event, ...) 
    local tooltip = eval(Config.get(self.tooltip), self:GetUnit(), self:GetUnit());
    local r, g, b = self.unitframe:GetTooltipColor();

    if   self:Config("MOUSEOVER_CURSOR")
    then SetCursor("Interface\\CURSOR\\Inspect.PNG");
    end;

    if tooltip and tooltip:len() > 0
    then 
         GameTooltip:ClearLines();
         GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
         GameTooltip:SetOwner(self, "ANCHOR_PRESERVE");
         local lines = split(tooltip, "\n");
         for i, line in ipairs(lines)
         do GameTooltip:AddLine(line, r, g, b, true)
         end;
         GameTooltip:Show();
    end;
  end;

  function hideTooltip(self, event, ...) 
    GameTooltip:FadeOut();
    ResetCursor();
  end;

  -- rpuf "style" for oUF ----------------------------------------------------------------------------------------------------------------------------------
  local function RP_UnitFrame_Constructor(self, unit)

    self.unit     = unit;
    self.panels   = {};
    self.toolTips = {};
    self.tagStrs  = {}

    self.frameName = FRAME_NAMES[unit:upper()];

    self.backdrop = self:CreateTexture(nil, "BACKGROUND");
    self.backdrop:SetAllPoints();
    self.backdrop:SetColorTexture(0, 0, 0, 0.75);

    function self.Config(self, setting)
      if Config.get("LINK_FRAME_" .. self.unit:upper())
      then return Config.get(setting)
      else return Config.get(setting .. "_" .. self.unit:upper())
      end;
    end;

    function self.GetName(self)             return self.frameName                              end;
    function self.GetUnit(self)             return self.unit;                                  end;
    function self.GetLayout(self)           return Config.get( self.unit:upper() .. "LAYOUT"); end;
    function self.GetPanel(self, panelName) return self.panels[panelName]                      end;
    function self.GetPanels(self)           return self.panels                                 end;

    function self.SetDimensions(self) 
      local frameWidth, frameHeight = getFrameDimensions(self:GetLayout());
      self:SetWidth(frameWidth);
      self:SetHeight(frameHeight);
    end;
    
    function self.CreatePanel(self, panelName, opt)
      opt = opt or {};
      local panel

      if   opt["has_own_backdrop"]
      then panel = CreateFrame("Frame", self.frameName .. panelName, self, 
                     BackdropTemplateMixin and "BackdropTemplate");
      else panel = CreateFrame("Frame", self.frameName .. panelName, self);
      end;

      panel.unitframe = self;
      panel.unit      = unit;
      panel.name      = panelName;

      local setting = opt.setting or panelName:upper();
      local tooltip = opt.tooltip or setting .. "_TOOLTIP";

      panel:SetPoint("TOPLEFT");

      if not opt["no_tag_string"]
      then 
        panel.text = panel:CreateFontString(self.frameName .. panel.name .. "Tag", 
          "OVERLAY", "GameFontNormal");
        panel.setting = setting;
        panel.text:SetAllPoints();
        panel.text:SetText(panel.name);
      end;

      if opt["portrait"]
      then panel.portrait = CreateFrame("PlayerModel", nil, panel);
           panel.portrait:SetAllPoints();
           self.Portrait = Portrait;
      end;

      if not opt["no_tooltip"]
      then panel:SetScript("OnEnter", showTooltip );
           panel:SetScript("OnLeave", hideTooltip );
           panel.tooltip = tooltip;
      end;

      if not opt["no_context_menu"]
      then self:RegisterForClicks("RightButtonUp");
           panel:SetScript( "OnMouseUp", showContextMenu);
           panel.contextMenu = true;
      end;
  
      function panel.GetUnit(self)     return self.unitframe:GetUnit()    end;
      function panel.GetLayout(self)   return self.unitframe:GetLayout(); end;
      function panel.Config(self, ...) return self.unitframe:Config(...)  end;
  
      function panel.Place(self)
        local layout   = self:GetLayout();
        local left     = getLeft(   self.name, layout);
        local top      = getTop(    self.name, layout);
        local height   = getHeight( self.name, layout);
        local width    = getWidth(  self.name, layout);

        if top and left
        then 
             self:ClearAllPoints();
             self:SetPoint("TOPLEFT", self.unitframe, "TOPLEFT", left, top);
             self:SetSize(width, height);
        end;
      end;

      function panel.SetJustify(self)
        if not self.text then return end;
        self.text:SetJustifyH(getJustifyH(self.name, self:GetLayout()));
        self.text:SetJustifyV("TOP");
      end;
        
      function panel.SetFont(self, fontFile, fontName) 
        if not self.text then return end;
        self.text:SetFont(fontFile, fontName); 
      end;

      function panel.SetTextColor(self, r, g, b) 
        if not self.text then return end;
        self.text:SetTextColor(r, g, b); 
      end;

      function panel.SetTagString(self) 
        if not self.text then return end;
        self.unitframe:Tag(self.text, Config.get(self.setting)); 
      end;

      function panel.SetVis(self) 
        self:SetShown( getVis( self.name, self:GetLayout() )) 
      end;
       
      self.panels[panelName] = panel;
    end; -- create panel

    function self.SetFont(self)
      local layout   = self:GetLayout();
      local fontSize = fontSize(self.name);
      local fontFile = fontFile(self.name);
      for _, panel in pairs(self:GetPanels()) do panel:SetJustify(); panel:SetFont(fontFile, fontSize) end;
    end;

    function self.SetTextColor(self)
      local r, g, b = toRGB(Config.get("COLOR_RPUF_TEXT"))
      for _, panel in pairs(self:GetPanels()) do panel:SetTextColor(r / 255, g / 255, b / 255) end;
    end;
      
    function self.CreatePanels(self)
      for panelName, opt in pairs( panelList )
      do  self:CreatePanel( panelName, opt);
      end;
    end;

    function self.PositionLock(self)
      
    end;

    function self.PlacePanels(self)  
      for _, panel in pairs(self:GetPanels()) 
      do panel:Place();        
      end; 
    end;
    function self.SetPanelVis(self)  
      for _, panel in pairs(self:GetPanels()) 
      do panel:SetVis();       
      end; 
    end;
    function self.SetTagStrings(self) 
      for _, panel in pairs(self:GetPanels()) 
      do  panel:SetTagString(); 
      end; 
    end;

    function self.GetTooltipColor(self)
      local r, g, b = toRGB(Config.get("COLOR_RPUF_TOOLTIP"))
      return r / 255, g / 255, b / 255;
    end;

    function self.GenerateVisibilityString(self)
      local conditions = {};
      if self:Config("DISABLE_RPUF") then return "hide" end;

      local hash =
      { ["RPUF_HIDE_DEAD"]      = "[dead] hide",
        ["RPUF_HIDE_PETBATTLE"] = "[petbattle] hide",
        ["RPUF_HIDE_VEHICLE"]   = "[vehicleui] hide",
        ["RPUF_HIDE_PARTY"]     = "[group:party] hide",
        ["RPUF_HIDE_RAID"]      = "[group:raid] hide",
        ["RPUF_HIDE_COMBAT"]    = "[combat] hide",
      };

      for k, v in pairs(hash) 
      do  if self:Config(k) then table.insert(conditions, v) end; 
      end;

      table.insert(conditions, "[@" .. self.unit .. ",exists] show");
      table.insert(conditions, "hide");

      return table.concat(conditions, ";")
    end;

    function self.SetVisibility(self)
      UnregisterStateDriver(self, "visibility");
      RegisterStateDriver(self, "visibility", self:GenerateVisibilityString());
    end;

    function self.Initialize(self)
      if not self.initialized
      then self:CreatePanels();
           self.initialized = true;
      end;
    end;

    function self.UpdateEverything(self)
      self:Initialize();
      self:SetDimensions();
      self:PlacePanels();
      self:SetPanelVis();
      self:SetFont();
      self:SetTextColor();
      self:SetTagStrings();
      self:SetVisibility();
      self:SetPoint("CENTER", UIParent);
    end;

  end; -- style definition

  oUF:RegisterStyle("RP_UnitFrame", RP_UnitFrame_Constructor);

end);
