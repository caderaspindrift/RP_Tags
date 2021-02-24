local addOnName, ns = ...;
local RPTAGS = RPTAGS;
local Module = RPTAGS.queue:GetModule(addOnName);

Module:WaitUntil("before MODULE_J", -- has to run before "frames"
function(self, event, ...)

  local CONST              = RPTAGS.CONST;
  local Utils              = RPTAGS.utils;
  local Config             = Utils.config;
  local frameUtils         = Utils.frames;
  local FRAME_NAMES        = CONST.RPUF.FRAMES.NAMES;
  local eval               = Utils.tags.eval;
  local split              = Utils.text.split;

  local getLeft            = frameUtils.panels.layout.getLeft;
  local getTop             = frameUtils.panels.layout.getTop;
  local getPoint           = frameUtils.panels.layout.getPoint;
  local getHeight          = frameUtils.panels.size.getHeight;
  local getWidth           = frameUtils.panels.size.getWidth;
  local LibSharedMedia     = LibStub("LibSharedMedia-3.0");

  local getUF_Size         = frameUtils.size.get;

  local scaleFrame         = frameUtils.size.scale.set;
  local toRGB              = Utils.color.hexaToNumber;

  local function initialize_panel(panel, panelName, opt)

    function self.Public(self, ...) return self:GetParent().Public(funcName ...) end;
    --   -- passthrough ---------------------------------------------------------------------------------------
    
    
    function self.Gap(       self, ... ) return self:GetParent():Public("Gap",       ... ) end;
    function self.GetUnit(   self, ... ) return self:GetParent():Public("GetUnit",   ... ) end;
    function self.GetLayout( self, ... ) return self:GetParent():Public("GetLayout", ... ) end;
    function self.ConfGet(   self, ... ) return self:GetParent():Public("ConfGet",   ... ) end;
    function self.ConfSet(   self, ... ) return self:GetParent():Public("ConfSet",   ... ) end;
    function self.PanelGet(  self, ... ) return self:GetParent():Public("PanelGet",  ... ) end;

    --   -- general -------------------------------------------------------------------------------------------
    
    function self.Place(self)
      local layout = self:GetLayout();
      local left   = self:GetPanelLeft();   -- getLeft(   self.name, layout);
      local top    = self:GetPanelTop();    -- getTop(    self.name, layout);
      local height = self:GetPanelHeight(); -- getHeight( self.name, layout);
      local width  = xelf:GetPanelWidth();  -- getWidth(  self.name, layout);

      if top and left
      then 
        self:ClearAllPoints();
        self:SetPoint("TOPLEFT", self:GetParent(), "TOPLEFT", left, top);
        self:SetSize(width, height);
      end;
    end;

    function self.SetVis(self) self:SetShown( self:GetPanelVis() ) end;

    --   ---- has_statusBar -----------------------------------------------------------------------------------
    if   opt["has_statusBar"]
    then 

      self.statusBar = panel:CreateTexture();
      self.statusBar:SetColorTexture(1, 1, 1, 0.5);
      self.statusBar:SetAllPoints();

      function self.SetStatusbar(   self, textureFile ) self.statusBar:SetTexture(textureFile) end;
      function self.SetVertexColor( self, ...         ) self.statusBar:SetVertexColor(...)     end;

    end;

    --   -- not no_tag_string ---------------------------------------------------------------------------------
    if not opt["no_tag_string"]
    then 

      self.text = panel:CreateFontString(self:GetParent():GetName() .. 
                  panel.name .. "Tag", "OVERLAY", "GameFontNormal");

      self.text:SetAllPoints();
      self.text:SetText(panel.name);

      function self.SetTagString( self) self:GetParent():Tag(self.text, Config.get(self.setting)) end;
      function self.SetTextColor( self, r, g, b) self.text:SetTextColor(r, g, b)                end;

      function self.GetJustify(self)
        if     self.name == "statusBar" 
        then   return self:ConfGet("STATUS_ALIGN"), "CENTER";
        elseif (self.name == "name" or self.name == "info") 
                 and
               (self:GetLayout() == "PAPERDOLL" or self:GetLayout() == "THUMBNAIL")
        then   return "CENTER", "CENTER";
        else   return "LEFT", "TOP";
        end;
      end;

      function self.SetJustify(self)
        self.text:SetJustifyH( self:GetPanelJustifyH() );
        self.text:SetJustifyV( self:GetPanelJustifyV() );
      end;
  
      local font_size_hash =
      { ["extrasmall" ] = -4, ["small" ] = -2, ["medium" ] = 0, ["large" ] = 2, ["extralarge" ] = 4 };
  
      function self.GetFont(self, ...) return self:GetParent():Public("GetFont", ...) end;

      function self.AdjustFont(self, size)
        return size + (font_size_hash[ Config.get( self.setting .. "_FONTSIZE" ) or 0]);
      end;

      function self.GetFontSize(self, ...)
        local _, fontSize = self:GetFont(...);
        return fontSize;
      end;

      function self:GetActualFontSize(self) return self:AdjustFont( self:GetFontSize() ); end;

      if opt["use_font"]
      then 

        function self.SetFont(self, fontFile, fontSize)

          if not fontSize then _, fontSize = self:GetFont(); end;
          local  fontName = self:ConfGet( opt["use_font"] .. "_FONTNAME")
          self.text:SetFont( LibSharedMedia:Fetch("font", fontName  ) or
                             LibSharedMedia:Fetch("font", "Morpheus"),
                             fontSize);

        end;

      else

        function self.SetFont(self, fontFile, fontSize)

          if not fontFile and fontSize then fontFile, fontSize = self:GetFont(); end;
          self.text:SetFont(fontFile, self:AdjustFont(fontSize));

        end;

      end;
            
    end;

    --   ---- portrait ----------------------------------------------------------------------------------------
    if   opt["portrait"]
    then 

      local portrait = CreateFrame("PlayerModel", nil, self);
      self:GetParent().Portrait = portrait;
      self.portrait = portrait;

      portrait:SetPoint("TOPLEFT", self, "BOTTOMRIGHT");
      portrait:Show();

      self.pictureFrame = CreateFrame("Frame", nil, self, BackdropTemplateMixin and "BackdropTemplate");

      self.pictureFrame:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT", 5, 5);
      self.pictureFrame:SetPoint("TOPRIGHT",   self, "TOPRIGHT", -5, -5);

      self.pictureFrame:SetBackdrop(
      { bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background", 
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border" 
      });

    end;
 
    --   -- tooltips ------------------------------------------------------------------------------------------
    if not opt["no_tooltip"]
    then 

      panel:EnableMouse();
      panel:SetScript("OnEnter", showTooltip );
      panel:SetScript("OnLeave", hideTooltip );
      panel.tooltip = tooltip;
       
      function self.GetTooltipColor(self, ...) return self:GetParent():Public("GetTooltipColor", ...) end;

      function self.showTooltip(self, event, ...) 
        local tooltip = eval(Config.get(self.tooltip), self:GetUnit(), self:GetUnit());
        local r, g, b = self:GetTooltipColor();
    
        if   self:ConfGet("MOUSEOVER_CURSOR")
        then SetCursor("Interface\\CURSOR\\Inspect.PNG");
        end;
    
        if tooltip and tooltip:len() > 0 -- only show a tooltip if there's something to show
        then GameTooltip:ClearLines();
             GameTooltip:SetOwner(self, "ANCHOR_CURSOR");
             GameTooltip:SetOwner(self, "ANCHOR_PRESERVE");
  
             local lines = split(tooltip, "\n"); -- this is our sneaky way of getting a "title"
             for i, line in ipairs(lines) do GameTooltip:AddLine(line, r, g, b, true) end;
  
             GameTooltip:Show();
        end;
      end; 
  
      function hideTooltip(self, ...) 
        GameTooltip:FadeOut(); 
        ResetCursor(); 
        return self, ... 
      end;
  
    end;
  
    --   -- context_menu --------------------------------------------------------------------------------------
    if not opt["no_context_menu"]
    then 

      -- obvious placeholder is obvious
      function showContextMenu(self, event, ...) print("context menu for", self.name); end;
  
      self:SetScript("OnMouseUp",
        function(self, button, ...) 
          if   button == "RightButton" then showContextMenu(self, button, ...) end; 
        end);

    end;
  
    --   -- layouts -------------------------------------------------------------------------------------------
    function self.SetLayout(self, layoutName)
      layoutName = layoutName or self:GetLayout();

      local  layout = RPTAGS.utils.frames.RPUF_GetLayout(layoutName);
      if not layout then return end;

      for key, func in pairs(layoutStruct.panel_methods) do self[k] = func; end; 

      for hashName, hashTable in pairs(layoutStruct.panel_method_hash)
      do  self[key] =
            function(self)
              local  item = hash[panel:GetName()];

              if     type(item) == "boolean" or  type(item)       == "number"   then return item 
              elseif type(item) == "string"  and type(hash[item]) == "function" then return hash[item](panel);
              elseif type(item) == "string"  and type(hash[item]) == "boolean"  then return hash[item]
              elseif type(item) == "string"  and type(hash[item]) == "number"   then return hash[item]
              elseif type(item) == "function"                                   then return item(panel);
              else   error("unknown function type " .. (k or "nil"));
              end;
            end;
      end;
    end;
 
    --
    --   ------------------------------------------------------------------------------------------------------
  
  end;

  RPTAGS.utils.frames.initialize_panel = initialize_panel;
  
end);
  