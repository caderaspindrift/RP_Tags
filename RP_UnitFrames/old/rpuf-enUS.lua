-- ------------------------------------------------------------------------------
-- RP Tags for ElvUI and Total RP 3
-- by Oraibi, Moon Guard (US) server
--
-- ------------------------------------------------------------------------------
--
-- This work is licensed under the Creative Commons Attribution 4.0 International
-- (CC BY 4.0) license. To view a copy of the license, visit
--
--     https://creativecommons.org/licenses/by/4.0/
-- ------------------------------------------------------------------------------
-- localization done on 
local RPTAGS = RPTAGS;

RPTAGS.queue:WaitUntil("DATA_LOCALE",
function(self, event, ...)

local CONST = RPTAGS.CONST;
local Icon = CONST.ICONS;
local L = LibStub("AceLocale-3.0"):NewLocale(CONST.APP_ID, "enUS", true);

local T_ = Icon.T_;
local _t = Icon._t;

-- US English localization ==========================================================================================================================================
-- ------------------ - core app strings

local RP             = CONST.APP_COLOR .. "rp:" .. "|r";
local APP_NAME       = RP .. "tags";
local RPUF_NAME      = RP .. CONST.APP_RPUF_COLOR .. "UnitFrames" .. "|r";
local RPUF_ABBR      = RP .. CONST.APP_RPUF_COLOR .. "UF"         .. "|r";
local RAINBOW_COLORS = "|cffff0000" .. "C" ..  -- presented like this so we can figure out what it actually says!
                       "|cffff9900" .. "o" ..
                       "|cffffff00" .. "l" ..
                       "|cff00ff00" .. "o" ..
                       "|cff00ffff" .. "r" ..
                       "|cffff00ff" .. "s" .. "|r"; 

RPTAGS.cache          = RPTAGS.cache or {};
RPTAGS.cache.APP_NAME = APP_NAME;
RPTAGS.cache.RP       = RP;

L["APP_CREATOR"]        = CONST.ORAIBI;
L["APP_DESC"]           = "Extends ElvUI's unitframes to use TRP3 fields in tags";
L["APP_ID"]             = CONST.APP_ID;
L["APP_NAME"]           = APP_NAME;
L["APP_VERSION"]        = CONST.VERSION;
L["APP_VERSION_MODE"]   = CONST.VERSION_MODE;
L["RPUF_NAME"]          = RPUF_NAME;
L["RPUF_ABBR"]          = RPUF_ABBR;
-- --- slash commands
L["APP_SLASH"]          = "rpt|rptag|rptags";
L["SLASH_HELP"]         = "h|help";
L["SLASH_CONFIG"]       = "o|c|config|options|settings";
L["SLASH_RPUF"]         = "u|r|rpuf|unitframes";
L["SLASH_COLOR"]        = "c|color|colors";
L["SLASH_LAYOUT"]       = "l|layout|frames";
L["SLASH_TAGS"]         = "p|tags|panels";
L["SLASH_KEYBIND"]      = "k|keybind|kb|keys|bind|bindings";
L["SLASH_VERSION"]      = "v|version";
L["SLASH_CHANGES"]      = "C|changes";
L["SLASH_ADDONS"]       = "A|addons";
L["SLASH_CREDITS"]      = "credits";
L["SLASH_ABOUT"]        = "a|about";
-- --- login messages
L["CHANGES"]            = "Changes";
L["VERSION"]            = "Version";
L["CHANGES_MOVED"]      = "Changes have been moved to the help system. Type [[/rptags changes]] to view the latest changes.";
-- --- names of addons
L["ADDON_ELVUI"]        = "ElvUI";
L["ADDON_MRP"]          = "MyRolePlay";
L["ADDON_RPUF"]         = "rp:UF";
L["ADDON_TRP3"]         = "Total RP 3";
L["ADDON_XRP"]          = "XRP Roleplay Profiles";
L["ADDON_RPUF"]         = RPUF_NAME;
L["CLIENT_MRP"]         = "MyRolePlay"; -- well these seem utterly redundant
L["CLIENT_MRP_SHORT"]   = "MRP";
L["CLIENT_TRP"]         = "Total RP 3";
L["CLIENT_TRPE"]        = "Total RP 3: Extended";
L["CLIENT_TRPE_SHORT"]  = "TRP:E";
L["CLIENT_TRP_SHORT"]   = "TRP";
L["CLIENT_XRP"]         = "XRP";
L["CLIENT_XRP_SHORT"]   = "XRP";
-- --- link types
L["HYPERLINK_CONFIG"]   = "Click to go to the %s screen.";
L["HYPERLINK_HELP"]     = "Click to view help about %s.";
L["HYPERLINK_HTTP"]     = "Click to get the link for the %s web site.";
L["HYPERLINK_RECIPE"]   = "Click to get the recipe for %s.";
L["HYPERLINK_TAG"]      = "Click to the view help for the %s tag.";
-- --- urls
L["URL_DISCORD"]        = "https://discord.gg/zGPP9x9";
L["URL_DISCORD_TT"]     = "The " .. APP_NAME .. " Discord Server";
L["URL_DOWNLOAD_CURSE"] = "https://www.curseforge.com/wow/addons/rp-tags";
L["URL_DOWNLOAD_CURSE_TT"] = APP_NAME .. " on CurseForge";
L["URL_DOWNLOAD_TUKUI"] = "https://www.tukui.org/addons.php?id                                                                                                                                     = 98";
L["URL_DOWNLOAD_TUKUI_TT"] = APP_NAME .. " on Tukui.org";

L["URL_ELVUI"]          = "https://www.tukui.org/welcome.php";   -- these are localized because it's possible there might be non-English alternate sites
L["URL_ELVUI_TT"]       = "ElvUI";

L["URL_MRP"]            = "https://www.curseforge.com/wow/addons/my-role-play";
L["URL_MRP_TT"]         = "MyRolePlay";

L["URL_TRP3"]           = "https://www.curseforge.com/wow/addons/total-rp-3";
L["URL_TRP3_TT"]        = "Total RP 3";

L["URL_TWITTER"]        = "http://twitter.com/oraibimoonguard";
L["URL_TWITTER_TT"]     = CONST.ORAIBI .. "'s Twitter";

L["URL_XRP"]            = "https://www.curseforge.com/wow/addons/xrp";
L["URL_XRP_TT"]         = "XRP";

-- ------------------ - user interface -----------------------------------------------------------------------------------------------------------------------------

L["CANCEL"]                 = "Cancel";
L["CLOSE_DIALOG"]           = "Close";
L["MORE_TAGS"]              = "More ...";
L["RESET"]                  = "Reset Now";
L["TOGGLE"]                 = "Toggle and Reload";
-- --- context menus
L["CONTEXT_HIDE_FRAMES"]    = "Hide all "   .. RPUF_NAME .. " in combat";
L["CONTEXT_LOCK_FRAMES"]    = "Lock all "   .. RPUF_NAME .. " positions";
L["CONTEXT_MENU_TITLE"]     = "Choose an Option";
L["CONTEXT_SHOW_FRAMES"]    = "Show all "   .. RPUF_NAME .. " in combat";
L["CONTEXT_UNLOCK_FRAMES"]  = "Unlock all " .. RPUF_NAME .. " positions";
L["EDIT_ICON"]              = "Edit Icon Slot Tags";
L["EDIT_PANEL"]             = "Edit Panel Tags";
L["EDIT_TAGS"]              = "Edit Tags";
L["EDIT_TAGS_FOR"]          = "Edit Tags for ";
L["EDIT_TOOLTIP"]           = "Edit Tooltip Tags";
L["OPEN_RPTAGS_CONFIG"]     = "Open " .. APP_NAME .. " Options";
L["QUICK_SETTINGS"]         = "Quick Settings";
-- --- help
L["HELP_DEFAULT"]           = "Introduction";
-- --- keybindings
L["KEYBIND_DISABLE_RPUF"]   = "Toggle " .. RPUF_NAME;
L["KEYBIND_HIDE_IN_COMBAT"] = "Toggle Hide in Combat";
L["KEYBIND_IC_OOC"]         = "Toggle IC/OOC Status";
L["KEYBIND_LOCK_FRAMES"]    = "Toggle Frame Lock";
L["KEYBIND_OPTIONS"]        = "Open " .. APP_NAME .. " Options";
L["KEYBIND_TAG_EDITOR"]     = "Open the Tag Editor";
L["KEYBIND_HELP"]           = "Open " .. APP_NAME .. " Help";
L["KEYBIND_MOUSEOVER_OPEN"] = "Open Mouseover Profile";
-- --- tag editor
L["TAG_EDITOR"]             = " Tag Editor";
L["TAG_EDIT_CANCEL"]        = "Cancel";
L["TAG_EDIT_DEFAULT"]       = "Default";
L["TAG_EDIT_ERRORS"]        = "You have unknown tags. Save anyway?";
L["TAG_EDIT_ERRORS_CANCEL"] = "Cancel";
L["TAG_EDIT_ERRORS_EDIT"]   = "Edit Tags";
L["TAG_EDIT_ERRORS_SAVE"]   = "Save Anyway";
L["TAG_EDIT_HELP"]          = "|cff%s%s|r\n\n%s";
L["TAG_EDIT_RESULTS"]       = "Test Results";
L["TAG_EDIT_RESULTS_FAIL"]  = "Test Results: Errors Found";
L["TAG_EDIT_RESULTS_PASS"]  = "Test Results: Passed";
L["TAG_EDIT_REVERT"]        = "Revert";
L["TAG_EDIT_TEST"]          = "Test Tags";
L["TAG_EDIT_UPDATE"]        = "Save Tags";
L["TAG_TEST_FAIL"]          = "Unknown tags found: ";
L["TAG_TEST_FAIL_SINGULAR"] = "Unknown tag found: ";
L["TAG_TEST_PASS"]          = "No errors found.";
L["UNKNOWN_TAG_END"]        = "]|r";
L["UNKNOWN_TAG_START"]      = "|cffff0000Tag Error: [";
L["USE_TAG_EDITOR"]         = "Tag Editor";

-- --------------------- - options ---------------------------------------------------------------------------------------------------------------------------------
L["OPT_COLORS"]            = RP .. RAINBOW_COLORS;
L["OPT_COLORS_COMPARISON"] = "Comparison Colors";      -- used
L["OPT_COLORS_DEFAULT"]    = "Default Colors";         -- used
L["OPT_COLORS_GENDER"]     = "Gender Colors";          -- used
L["OPT_COLORS_HILITE"]     = "Hilite Colors";          -- used
L["OPT_COLORS_I"]          = "You can customize the colors used in RPTAGS.";
L["OPT_COLORS_RPUF"]       = RPUF_NAME .. " Colors";   -- used
L["OPT_COLORS_STATUS"]     = "Status Colors";          -- used
L["OPT_DISPLAY"]           = "Add-On Behavior";        -- used
L["OPT_FORMATS"]           = "Tag Formats";            -- used
L["OPT_FORMATS"]           = RP .. "Formats";
L["OPT_KEYBINDINGS"]       = "Keybindings";
L["OPT_FORMATS_I"]         = "These options control how RPTAGS displays certain tags.";
L["OPT_GENERAL"]           = APP_NAME .." Settings";
L["OPT_GENERAL_I"]         = "These options control the basic functionality of RPTAGS.";
L["OPT_NOTES"]             = "Notes";
L["OPT_PARSE"]             = "Parsing Tag Values";     -- used
L["OPT_TAG_REFERENCE"]     = "Tag Reference";
L["OPT_REFERENCE_I"]       = "Configure RPTAGS with the options on the left, or choose a topic for help. You can use the |cffdd0000Defaults|r button to reset the options on each screen.\n\n In the reference below, clickable hyperlinks are shown |cff00dd00in green|r.";
L["OPT_RPUF_LAYOUT"]       = RPUF_ABBR .." Layout";
L["OPT_RPUF_LAYOUT_I"]     = "Use these options to set the dimensions of the various panels in rp:UnitFrames Some layouts may not display all panels. For example, the details panel is only shown in frames set to the Detailed layout.";
L["OPT_RPUF_MAIN"]         = RPUF_NAME;
L["OPT_RPUF_MAIN_I"]       = "These options control the basic functionality of rp:UnitFrames.";
L["OPT_RPUF_PANELS"]       = RPUF_ABBR .." Panels";
L["OPT_RPUF_PANELS_I"]     = "You can change the tags displayed in rp:UnitFrames panels, as well as the tooltips shown when you move your mouse over that panel.";
L["OPT_TITLE_COLORS"]      = APP_NAME .." ".. RAINBOW_COLORS;
L["OPT_TITLE_FORMATS"]     = APP_NAME .." Formats";
L["OPT_TITLE_GENERAL"]     = APP_NAME .." General Settings";
L["OPT_TITLE_REFERENCE"]   = APP_NAME .." Reference";
L["OPT_TITLE_RPUF_LAYOUT"] = RPUF_NAME .." Layout";
L["OPT_TITLE_RPUF_MAIN"]   = RPUF_NAME .." General Settings";
L["OPT_TITLE_RPUF_PANELS"] = RPUF_NAME .." Panels";
L["OPT_RPTAGS_HELP"]       = APP_NAME .. " Help";
L["OPT_OPTIONS"]           = "Options";
L["OPT_RECIPES"]           = "Recipes";
L["OPT_LABELS"]            = "Labels";
L["OPT_DEBUGGING_CMDS"]    = "Debugging Commands";
L["OPT_ABOUT"]             = "About " .. APP_NAME;
L["OPT_CHANGES"]           = "Changes";
L["OPT_CREDITS"]           = "Credits";
L["OPT_ADDONS"]            = "Addons";
-- beep
L["RP_REFERENCE"]          = RP.."Reference";
L["SETTINGS"]              = "settings";
L["SET_LAYOUT"]            = "Set ";
L["WARNING_RPUF_DISABLED"] = "|cffdd0000Note:|r These options are disabled because you have turned off rp:UnitFrames. To re-enable, go to the RPUF options panel."; -- should be OPT_INSTRUCT_

  -- --------------------- - notifications ----------------------------------------------------------------------------------------------------------------------------
-- error messages
local ERROR_INLINE                  = "|cffdd0000Error!|r";
local ERROR_STARTUP                 = APP_NAME .. "|cffff0000 Startup Error:|r\n\n";
local ERROR_NO_RP_ADDON             = "but you aren't using a roleplaying addon that is recognized by RPTAGS.";

L["ERROR_ACKNOWLEDGED"]             = "Understood";
L["ERROR_KEYBIND_IC_OOC"]           = ERROR_INLINE .. "You used the keybinding to change your IC/OOC status, " .. ERROR_NO_RP_ADDON;
L["ERROR_KEYBIND_NO_RPUF"]          = ERROR_INLINE .. "You tried to use a keybinding for RPUF but you don't have RPUF turned on.";
L["ERROR_KEYBIND_TAG_EDITOR"]       = ERROR_INLINE .. "You used the keybinding to open the last panel you edited in the tag editor, " ..
                                      "but you haven't used it before. Opening the Options page for tags instead.";
L["ERROR_KEYBIND_MOUSEOVER_OPEN"]   = ERROR_INLINE .. "You used the keybinding to open your mouseover target's profile, " .. ERROR_NO_RP_ADDON;
L["ERROR_NO_UNIT_FRAMES"]           = ERROR_STARTUP .. "You don't have any unit frames addons that " .. APP_NAME .. " is compatible with.\n\n" ..
                                      "Please install one of these: ";
L["ERROR_NO_MSP_CLIENT"]            = ERROR_STARTUP ..  APP_NAME .. " requires that you have a roleplaying addon installed.\n\n" ..
                                      "Please install one of these: ";
L["ERROR_TOO_MANY_MSP"]             = ERROR_STARTUP .. "Since you have more than one roleplaying addon installed, " ..  APP_NAME .. 
                                      " has been disabled. Please disable one of those addons and reload your user interface.\n\n" ..
                                      "The roleplaying addons found by " ..  APP_NAME ..  " were: ";
-- other notifications
L["COLORS_ARE_RESET"]               = "All custom colors have been reset to their original values."; -- should be NOTIFY_
L["FRAMES_ARE_RESET"]               = "All " .. RPUF_NAME .. " have been reset to their original panel dimensions."; -- should be NOTIFY_
L["FRAME_LOCATIONS_ARE_RESET"]      = "All " .. RPUF_NAME .. " have been reset to their original locations."; -- should be NOTIFY_
L["GET_LINK"]                       = "Get Link";
L["GET_LINK_INSTRUCT"]              = "You can copy this link by using the %s keyboard shortcut and then paste the link into your browser using the %s shortcut.";
L["IMPORT_TRP3_CONFIG_DONE"]        = "Import of Total RP 3 settings [[complete]]. This is a one-time message and you won't need to see it again."; -- should be NOTIFY_
L["IMPORT_TRP3_CONFIG_START"]       = "RPTAGS has a [[new configuration system]], accessible via the normal [[[WoW addons options menu]]]. Initializing the RPTAGS options with your Total RP 3 settings."; -- should be NOTIFY_
L["LOCKING_FRAMES"]                 = RPUF_NAME .. " are now locked in position."; -- should be NOTIFY_
L["NOTIFY_KEYBIND_IC_OOC"]          = "You are now ";
L["NOTIFY_KEYBIND_TAG_EDITOR"]      = "Opening the RPUF Tag Editor with the last tag you edited.";
L["NOTIFY_KEYBIND_TAG_EDITOR_OPEN"] = "|cffdddd00Ignored:|r You used the keybinding to open the tag editor, but you already have it open.";
L["OPTIONS_ARE_RESET"]              = "Options have been reset to their default values.";
L["RELOAD_UI_WARNING"]              = "This will reload your user interface. Are you sure you want to do that?"; -- should be ALERT_
L["RELOAD_UI_WARNING_NO"]           = "Cancel";
L["RELOAD_UI_WARNING_YES"]          = "Yes, Reload";
L["RPTAGS_OPTIONS"]                 = APP_NAME .. " Options";
L["RPUF_ARE_DISABLED"]              = "RPUF are now disabled."; -- should be NOTIFY_
L["RPUF_ARE_ENABLED"]               = "RPUF are now enabled."; -- should be NOTIFY_
L["RPUF_HIDE_IN_COMBAT"]            = RPUF_NAME .. " are now hidden during combat."; -- should be NOTIFY_
L["RPUF_SHOW_IN_COMBAT"]            = RPUF_NAME .. " will be shown during combat."; -- should be NOTIFY_
L["TAGS_ARE_RESET"]                 = "All " .. RPUF_NAME .. " panels and tooltips have been reset to their default tag values."; -- should be NOTIFY_
L["TRP3_CONFIG_OBSOLETE"]           = "Use the RPTAGS configuration system";
L["TRP3_CONFIG_OBSOLETE_TT"]        = "RPTAGS is now configured using its own configuration system, accessible via the normal WoW addons options.";
L["UNLOCKING_FRAMES"]               = RPUF_NAME .. " are now unlocked and can be moved."; -- should be NOTIFY_

  -- --------------------- - config -----------------------------------------------------------------------------------------------------------------------------------
L["CONFIG_ADULT_GENDERS"]              = "Parse Adult Genders";
L["CONFIG_ADULT_GENDERS_TT"]           = "If you have enabled parsing of genders, check this box to have RPTAGS match rude or inappropriate names for different genders. |cffff0000Warning:|r Only enable this if you are, yourself, an adult.";
L["CONFIG_CHANGES_MESSAGE"]            = "Changes message";
L["CONFIG_CHANGES_MESSAGE_TT"]         = "Check to have the login message list what's new in the current version of RPTAGS.";
L["CONFIG_COLOR_EQUALISH"]             = "Approximately equal";
L["CONFIG_COLOR_EQUALISH_TT"]          = "The color for a comparison tag, such as [rp:agecolor] or [rp:heightcolor], for when the other character's value is roughtly equal to yours.";
L["CONFIG_COLOR_FEMALE"]               = "Female";
L["CONFIG_COLOR_FEMALE_TT"]            = "The color for a female character, when you use the [rp:gendercolor] tag.";
L["CONFIG_COLOR_GREATERTHAN"]          = "Greater than you";
L["CONFIG_COLOR_GREATERTHAN_TT"]       = "The color for a comparison tag, such as [rp:agecolor] or [rp:heightcolor], for when the other haracter's value is greater than yours.";
L["CONFIG_COLOR_HILITE_1"]             = "Hilite color 1";
L["CONFIG_COLOR_HILITE_1_TT"]          = "The color used in the [rp:hilite-1] tag.";
L["CONFIG_COLOR_HILITE_2"]             = "Hilite color 2";
L["CONFIG_COLOR_HILITE_2_TT"]          = "The color used in the [rp:hilite-2] tag.";
L["CONFIG_COLOR_HILITE_3"]             = "Hilite color 3";
L["CONFIG_COLOR_HILITE_3_TT"]          = "The color used in the [rp:hilite-3] tag.";
L["CONFIG_COLOR_IC"]                   = "In Character [IC]";
L["CONFIG_COLOR_IC_TT"]                = "The color for a player who is currently in character, when you use the [rp:statuscolor] tag.";
L["CONFIG_COLOR_LESSTHAN"]             = "Less than you";
L["CONFIG_COLOR_LESSTHAN_TT"]          = "The color for a comparison tag, such as [rp:agecolor] or [rp:heightcolor], for when the other character's value is less than yours.";
L["CONFIG_COLOR_MALE"]                 = "Male";
L["CONFIG_COLOR_MALE_TT"]              = "The color for a male character, when you use the [rp:gendercolor] tag.";
L["CONFIG_COLOR_NEUTER"]               = "Neuter";
L["CONFIG_COLOR_NEUTER_TT"]            = "The color for a character with a neuter-gender character, when you use the [rp:gendercolor] tag. Only used if you have checked the boxes to enable gender extrapolation and extended genders.";
L["CONFIG_COLOR_NPC"]                  = "Non-Player Character";
L["CONFIG_COLOR_NPC_TT"]               = "The color for an NPC when you use the [rp:statuscolor] tag. NPCs can't be either IC or OOC.";
L["CONFIG_COLOR_OOC"]                  = "Out of Character [OOC]";
L["CONFIG_COLOR_OOC_TT"]               = "The color for a player who is currently out of character, when you use the [rp:statuscolor] tag.";
L["CONFIG_COLOR_RPUF"]                 = "Background Color";
L["CONFIG_COLOR_RPUF_TEXT"]            = "Text Color";
L["CONFIG_COLOR_RPUF_TEXT_TT"]         = "Choose the default font color for RPUF.";
L["CONFIG_COLOR_RPUF_TOOLTIP"]         = "Tooltip Text Color";
L["CONFIG_COLOR_RPUF_TOOLTIP_TT"]      = "Choose the default font color for RPUF tooltips.";
L["CONFIG_COLOR_RPUF_TT"]              = "Choose a background color for RPUF.";
L["CONFIG_COLOR_THEY"]                 = "Non-binary / singular they";
L["CONFIG_COLOR_THEY_TT"]              = "The color for a non-binary character or any other character that uses a singular they pronoun, when you use the [rp:gendercolor] tag. Only used if you have checked the boxes to enable gender extrapolation and extended genders.";
L["CONFIG_COLOR_UNKNOWN"]              = "Default/Unknown";
L["CONFIG_COLOR_UNKNOWN_TT"]           = "This color is displayed when you use a color tag and the result isn't recognized by RPTAGS. This value applies to [rp:gendercolor], [rp:statuscolor], [rp:agecolor], and similar tags.";
L["CONFIG_DETAILHEIGHT"]               = "Details Panel Height";
L["CONFIG_DETAILHEIGHT_TT"]            = "Choose how tall you want the details panel to be.";
L["CONFIG_DETAILPANEL"]                = "Details Panel";
L["CONFIG_DETAILPANEL_TT"]             = "Set the tags for the 'details' panel.";
L["CONFIG_DETAIL_TOOLTIP"]             = "Details Panel Tooltip";
L["CONFIG_DETAIL_TOOLTIP_TT"]          = "Set the tags for the 'details' panel tooltip.";
L["CONFIG_DISABLE_BLIZZARD"]           = "Disable Blizzard Unit Frames";
L["CONFIG_DISABLE_BLIZZARD_TT"]        = "You can disable Blizzard's unit frames. Don't worry, you can get them back by unchecking this button! |cffdd0000Warning:|r Changing this option will load the game.";
L["CONFIG_DISABLE_RPUF"]               = "Disable RPUF";
L["CONFIG_DISABLE_RPUF_TT"]            = "You can disable RPUF without disabling all of RPTAGS. One reason you might want to do this would be if you are running [[Elvui]] and don't need to use RPUF to display RPTAGS.";
L["CONFIG_ENABLE"]                     = "Enable";
L["CONFIG_FOCUSFRAME_SCALE"]           = "Focus Frame Scale";
L["CONFIG_FOCUSFRAME_SCALE_TT"]        = "Adjust the relative scale of the RPUF focus frame so it takes up more or less space on your screen.";
L["CONFIG_FOCUSLAYOUT"]                = "Focus Frame Layout";
L["CONFIG_FOCUSLAYOUT_TT"]             = "Choose the layout for your focus unit frame.";
L["CONFIG_GAPSIZE"]                    = "Layout Spacing";
L["CONFIG_GAPSIZE_TT"]                 = "Choose how much extra space you want left around the elements of the unitframes.";
L["CONFIG_GLANCE_COLON"]               = "Glance value separator";
L["CONFIG_GLANCE_COLON_COLON"]         = "Young|cff00bbbb:|r For her race";
L["CONFIG_GLANCE_COLON_COMMAS"]        = "Young|cff00bbbb,|r For her race";
L["CONFIG_GLANCE_COLON_DASHES"]        = "Young |cff00bbbb-|r For her race";
L["CONFIG_GLANCE_COLON_SLASHES"]       = "Young |cff00bbbb/|r For her race";
L["CONFIG_GLANCE_COLON_SPACES"]        = "Young |cff00bbbb(space)|r For her race";
L["CONFIG_GLANCE_COLON_TT"]            = "Select the delimiter between the title of a [rp:glance] tag, and the text of that field.";
L["CONFIG_GLANCE_DELIM"]               = "Glance delimiter";
L["CONFIG_GLANCE_DELIM_COMMAS"]        = "Young|cff00bbbb,|r Well-Dressed";
L["CONFIG_GLANCE_DELIM_NEWLINES"]      = "Young|cff00bbbb(newline)|rWell-Dressed";
L["CONFIG_GLANCE_DELIM_SEMICOLONS"]    = "Young|cff00bbbb;|r Well-Dressed";
L["CONFIG_GLANCE_DELIM_SLASHES"]       = "Young |cff00bbbb//|r Well-Dressed";
L["CONFIG_GLANCE_DELIM_SPACES"]        = "Young |cff00bbbb(space)|rWell-Dressed";
L["CONFIG_GLANCE_DELIM_TT"]            = "Select the delimiter between multiple [rp:glance] fields.";
L["CONFIG_ICONWIDTH"]                  = "Icon Width";
L["CONFIG_ICONWIDTH_TT"]               = "Choose how wide you want the icon bar to be.";
L["CONFIG_ICON_1"]                     = "Icon Slot 1";
L["CONFIG_ICON_1_TOOLTIP"]             = "Icon Slot 1 Tooltip";
L["CONFIG_ICON_1_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_1_TT"]                  = "Set the icon for the first icon slot. You should use icon tags.";
L["CONFIG_ICON_2"]                     = "Icon Slot 2";
L["CONFIG_ICON_2_TOOLTIP"]             = "Icon Slot 2 Tooltip";
L["CONFIG_ICON_2_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_2_TT"]                  = "Set the icon for the second icon slot. You should use icon tags.";
L["CONFIG_ICON_3"]                     = "Icon Slot 3";
L["CONFIG_ICON_3_TOOLTIP"]             = "Icon Slot 3 Tooltip";
L["CONFIG_ICON_3_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_3_TT"]                  = "Set the icon for the third icon slot. You should use icon tags.";
L["CONFIG_ICON_4"]                     = "Icon Slot 4";
L["CONFIG_ICON_4_TOOLTIP"]             = "Icon Slot 4 Tooltip";
L["CONFIG_ICON_4_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_4_TT"]                  = "Set the icon for the fourth icon slot. You should use icon tags.";
L["CONFIG_ICON_5"]                     = "Icon Slot 5";
L["CONFIG_ICON_5_TOOLTIP"]             = "Icon Slot 5 Tooltip";
L["CONFIG_ICON_5_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_5_TT"]                  = "Set the icon for the fifth icon slot. You should use icon tags.";
L["CONFIG_ICON_6"]                     = "Icon Slot 6";
L["CONFIG_ICON_6_TOOLTIP"]             = "Icon Slot 6 Tooltip";
L["CONFIG_ICON_6_TOOLTIP_TT"]          = "Set the tags for the first icon slot tooltip.";
L["CONFIG_ICON_6_TT"]                  = "Set the icon for the sixth icon slot. You should use icon tags.";
L["CONFIG_INFOPANEL"]                  = "Info Panel";
L["CONFIG_INFOPANEL_TT"]               = "Set the tags for the 'info' panel.";
L["CONFIG_INFOWIDTH"]                  = "Info Panel Width";
L["CONFIG_INFOWIDTH_TT"]               = "Choose how wide you want the info panel to be.";
L["CONFIG_INFO_TOOLTIP"]               = "Info Panel Tooltip";
L["CONFIG_INFO_TOOLTIP_TT"]            = "Set the tags for the 'info' panel tooltip.";
L["CONFIG_LINEBREAKS"]                 = "Allow linebreaks";
L["CONFIG_LINEBREAKS_TT"]              = "Check to allow line breaks in other peoples' fields, such as currently or glances. This might throw off your UI layouts if enabled.";
L["CONFIG_LOCK_FRAMES"]                = "Lock Frames";
L["CONFIG_LOCK_FRAMES_TT"]             = "Lock the unit frames so they can't be moved.";
L["CONFIG_LOGIN_MESSAGE"]              = "Login message";
L["CONFIG_LOGIN_MESSAGE_TT"]           = "Check to show a message from RPTAGS on login";
L["CONFIG_NAMEPANEL"]                  = "Name Panel";
L["CONFIG_NAMEPANEL_TT"]               = "Set the tags for the 'name' panel. You don't have to use name tags.";
L["CONFIG_NAME_TOOLTIP"]               = "Name Panel Tooltip";
L["CONFIG_NAME_TOOLTIP_TT"]            = "Set the tags for the 'name' panel tooltip.";
L["CONFIG_NOTE_1_STRING"]              = "First Note Keyword";
L["CONFIG_NOTE_1_STRING_TT"]           = "If you have set a note on the unit and a line in the note contains this word, then [rp:note-1] will display that line. Keywords must be at least 3 characters long and can contain Lua patterns.";
L["CONFIG_NOTE_2_STRING"]              = "Second Note Keyword";
L["CONFIG_NOTE_2_STRING_TT"]           = "If you have set a note on the unit and a line in the note contains this word, then [rp:note-2] will display that line. Keywords must be at least 3 characters long and can contain Lua patterns.";
L["CONFIG_NOTE_3_STRING"]              = "Third Note Keyword";
L["CONFIG_NOTE_3_STRING_TT"]           = "If you have set a note on the unit and a line in the note contains this word, then [rp:note-3] will display that line. Keywords must be at least 3 characters long and can contain Lua patterns.";
L["CONFIG_PARSE_AGE"]                  = "Parse Age";
L["CONFIG_PARSE_AGE_TT"]               = "Normally, [rp:age] is only calculated when it's a number alone, which means the number of years. Check this box to have RPTAGS try to interpret age fields that have text such as '120 years' or '20 centuries'.";
L["CONFIG_PARSE_GENDER"]               = "Parse Gender";
L["CONFIG_PARSE_GENDER_TT"]            = "Normally, gender is based on the toon's model for [rp:gender], [rp:gendercolor], and pronoun tags. Check this box to have RPTAGS attempt to interpret gender based on a variety of profile fields, such as race and the [[[Gender]]] custom field.";
L["CONFIG_PARSE_HW"]                   = "Parse Height and Weight";
L["CONFIG_PARSE_HW_TT"]                = "Normally, [rp:height] and [rp:weight] are only calculated when they're a number alone. For height, this number represents centimeters, and for weight this represents kilograms. Check this box to have RPTAGS attempt to interpret height and weight fields that have text such as '4 foot 6', '2 meters', '165 pounds', or '12 stone'.";
L["CONFIG_PLAYERFRAME_SCALE"]          = "Player Frame Scale";
L["CONFIG_PLAYERFRAME_SCALE_TT"]       = "Adjust the relative scale of the RPUF player frame so it takes up more or less space on your screen.";
L["CONFIG_PLAYERLAYOUT"]               = "Player Frame Layout";
L["CONFIG_PLAYERLAYOUT_TT"]            = "Choose the layout for the player (that's you) unit frame.";
L["CONFIG_PORTRAIT"]                   = "Portrait";
L["CONFIG_PORTRAIT_TT"]                = "Set the tags for the portrait.";
L["CONFIG_PORTRAIT_TOOLTIP"]           = "Portrait Tooltip";
L["CONFIG_PORTRAIT_TOOLTIP_TT"]        = "Set the tags for the portrait tooltip.";
L["CONFIG_PORTWIDTH"]                  = "Portrait Width";
L["CONFIG_PORTWIDTH_TT"]               = "Choose how wide you want the portrait to be.";
L["CONFIG_PROFILESIZE_FMT"]            = "Profile sizes";
L["CONFIG_PROFILESIZE_FMT_TT"]         = "Select how you want to display the size of someone else's profile with [rp:profilesize]. Numbers represent TRP3 block sizes.";
L["CONFIG_REAL_ELLIPSES"]              = "Use actual ellipses when truncating";
L["CONFIG_REAL_ELLIPSES_TT"]           = "Some fonts may have a problem displaying ellipsis characters. Uncheck this box to use three periods instead.";
L["CONFIG_REFERENCE_TOPIC"]            = "Choose a Topic";
L["CONFIG_REFERENCE_TOPIC_TT"]         = "Choose a topic. Topics in |cffdddd00gold|r are general information, while those in |cffffffffwhite|r are specific tag families.";
L["CONFIG_RESET_FRAME_LOCATIONS"]      = "Reset Frame Locations";
L["CONFIG_RESET_FRAME_LOCATIONS_TT"]   = "Set all frames back to their default locations.";
L["CONFIG_RESET_THESE_VALUES"]         = "Reset These Values";
L["CONFIG_RESET_THESE_VALUES_TT"]      = "Set the displayed values back to their default values.";
L["CONFIG_RPUFALPHA"]                  = "Background Transparency";
L["CONFIG_RPUFALPHA_TT"]               = "Set the transparency of the background. 0 is completely invisible, while 100 is completely opaque.";
L["CONFIG_RPUF_BACKDROP"]              = "Frame Border";
L["CONFIG_RPUF_BACKDROP_TT"]           = "Choose what kind of border, if any, you want for RPUF.";
L["CONFIG_RPUF_HIDE_COMBAT"]           = "Hide in Combat";
L["CONFIG_RPUF_HIDE_COMBAT_TT"]        = "Check this to hide RPUF when you are in combat.";
L["CONFIG_RPUF_HIDE_DEAD"]             = "Hide when Dead";
L["CONFIG_RPUF_HIDE_DEAD_TT"]          = "Check this to hide RPUF when you are dead.";
L["CONFIG_RPUF_HIDE_PARTY"]            = "Hide in Party";
L["CONFIG_RPUF_HIDE_PARTY_TT"]         = "Check this to hide RPUF when you are in a party.";
L["CONFIG_RPUF_HIDE_PETBATTLE"]        = "Hide in Pet Battle";
L["CONFIG_RPUF_HIDE_PETBATTLE_TT"]     = "Check this to hide RPUF when you are in a pet battle.";
L["CONFIG_RPUF_HIDE_RAID"]             = "Hide in Raid";
L["CONFIG_RPUF_HIDE_RAID_TT"]          = "Check this to hide RPUF when you are in a raid.";
L["CONFIG_RPUF_HIDE_VEHICLE"]          = "Hide in Vehicle";
L["CONFIG_RPUF_HIDE_VEHICLE_TT"]       = "Check this to hide RPUF when you are in a vehicle.";
L["CONFIG_SIZEBUFF_FMT"]               = "Size buffs";
L["CONFIG_SIZEBUFF_FMT_TT"]            = "Select how you wish to display [rp:sizebuff]. Size buffs make character larger or smaller for at least several minutes.";
L["CONFIG_STATUSHEIGHT"]               = "Height";
L["CONFIG_STATUSHEIGHT_TT"]            = "Set the height of the 'status' panel.";
L["CONFIG_STATUSPANEL"]                = "Status Panel";
L["CONFIG_STATUSPANEL_TT"]             = "Set the tags for the 'status' panel. You don't have to use status tags.";
L["CONFIG_STATUS_ALIGN"]               = "Alignment";
L["CONFIG_STATUS_ALIGN_TT"]            = "Choose how you want the text on the status bar to be aligned.";
L["CONFIG_STATUS_TEXTURE"]             = "Appearance";
L["CONFIG_STATUS_TEXTURE_TT"]          = "Choose how you want the status bar to appear.";
L["CONFIG_STATUS_TOOLTIP"]             = "Status Panel Tooltip";
L["CONFIG_STATUS_TOOLTIP_TT"]          = "Set the tags for the 'status' panel tooltip.";
L["CONFIG_TARGETFRAME_SCALE"]          = "Target Frame Scale";
L["CONFIG_TARGETFRAME_SCALE_TT"]       = "Adjust the relative scale of the RPUF target frame so it takes up more or less space on your screen.";
L["CONFIG_TARGETLAYOUT"]               = "Target Frame Layout";
L["CONFIG_TARGETLAYOUT_TT"]            = "Choose the layout for the target unit frame.";
L["CONFIG_TARGETTARGETFRAME_SCALE"]    = "TargetTarget Frame Scale";
L["CONFIG_TARGETTARGETFRAME_SCALE_TT"] = "Adjust the relative scale of the RPUF target-of-target frame so it takes up more or less space on your screen.";
L["CONFIG_TRP3"]                       = "To configure [rp:tags] processing, see TRP3's configuration screens.";
L["CONFIG_TWEAK_ELVUI_LIMITS"]         = "Increase the maximum size limits on unitframes.";
L["CONFIG_TWEAK_ELVUI_LIMITS_TT"]      = "Check to allow ElvUI player and target frames to become quite large";
L["CONFIG_UNITS_HEIGHT"]               = "Height";
L["CONFIG_UNITS_HEIGHT_TT"]            = "Select how to display [rp:height] when there is only a number given, or when the value is parsed. Mary Sue Protocol defines a number alone as centimeters; this is how you want those centimeters to be displayed.";
L["CONFIG_UNITS_WEIGHT"]               = "Weight";
L["CONFIG_UNITS_WEIGHT_TT"]            = "Select how to display [rp:weight] when there is only a number given, or when the value is parssed. Mary Sue Protocol defines a number alone as kilograms; this is how you want those kilograms to be displayed.";
L["CONFIG_UNLOCK_FRAMES"]              = "Unlock Frames";
L["CONFIG_UNSUP_NONE"]                 = "Don't Show Anything";
L["CONFIG_UNSUP_TAG"]                  = "Unsupported Tag Format";
L["CONFIG_UNSUP_TAG_TT"]               = "Not all roleplaying addons support the same fields. Pick the way you want unsupported tags to be displayed to you. This is primarily to aid in debugging your tag fields.";

  -- -------------------- - formats -------------------------------------------------------------------------------------------------------------------------------
L["FMT_A"]                = "a %s";
L["FMT_APP_LOAD"]         = "%s loaded. Type [[[%s]]] for options.";
L["FMT_APP_NAME"]         = "%s (v%s)";
L["FMT_BOND_NAME"]        = "%s, %s %s";
L["FMT_CM"]               = "%d cm";
L["FMT_CM_FT_IN"]         = "%d cm (%d' %d\")";
L["FMT_CM_IN"]            = "%d cm (%d\")";
L["FMT_CONFIG_SET"]       = "%s Setting |cff%s%s|r to |cff%s%s|r";
L["FMT_FT_IN"]            = "%d' %d\"";
L["FMT_FT_IN_CM"]         = "%d' %d\" (%d cm)";
L["FMT_HEIGHT_PASSTHRU"]  = "%s";
L["FMT_HEIGHT_SIZE_BUFF"] = "%s [%s, %+d%%]";
L["FMT_IN"]               = "%d\"";
L["FMT_IN_CM"]            = "%d\" (%d cm)";
L["FMT_KG"]               = "%d kg";
L["FMT_KG_LB"]            = "%d kg (%d lb)";
L["FMT_KG_ST_LB"]         = "%d kg (%d stone %d lb)";
L["FMT_LB_KG"]            = "%d lb (%d kg)";
L["FMT_LB_ST"]            = "%d lb (%d stone %d lb)";
L["FMT_MOTTO"]            = '"%s"';
L["FMT_SB_BUFF"]          = "%s";
L["FMT_SB_BUFF_BRC"]      = "[%s]";
L["FMT_SB_BUFF_PCT"]      = "%s (%+d%%)";
L["FMT_SB_BUFF_PCT_BRC"]  = "[%s, %+d%%]";
L["FMT_SB_PCT"]           = "%+d%%";
L["FMT_SB_PCT_BRC"]       = "[%+d%%]";
L["FMT_SB_PCT_BUFF"]      = "%+d%% (%s)";
L["FMT_SIZE_BUFF"]        = "%s [%+d%%]";
L["FMT_SIZE_BUFF_SHORT"]  = "[%+d%%]";
L["FMT_ST_LB"]            = "%d stone %d lb";
L["FMT_ST_LB_KG"]         = "%d stone %d lb (%d kg)";
L["FMT_ST_LB_LB_KG"]      = "%d stone %d lb (%d lb, or %d kg)";
L["FMT_SZ_BRC_LTR"]       = "[%s]";
L["FMT_SZ_BRC_LTR_NUM"]   = "[%s:%d]";
L["FMT_SZ_BRC_NUM"]       = "[%d]";
L["FMT_SZ_BRC_WRD_NUM"]   = "[%s: %d]";
L["FMT_SZ_LTR"]           = "%s";
L["FMT_SZ_NUM"]           = "%d";
L["FMT_SZ_PAR_WRD"]       = "(%s)";
L["FMT_SZ_WRD"]           = "%s";
L["FMT_SZ_WRD_BRC_NUM"]   = "%s [%d]";
L["FMT_SZ_WRD_PAR_NUM"]   = "%s (%d)";
L["FMT_TAG_TEST"]         = "%s Testing your tags now.";
L["FMT_WEIGHT_PASSTHRU"]  = "%s";

  -- parsing - ----------------------------------------------------------------------------------------------------------------------------------------------
L["RACE_1"]     = "Human,Stormwind,Arath,Lordae";
L["RACE_2"]     = "Orc,Orgrim,Frostwolf,Warsong,Blackrock,Dragonmaw";
L["RACE_3"]     = "Dwarf,Ironforg,Wildham,Frostborn";
L["RACE_4"]     = "Night Elf,Kal'dorei,Teldras";
L["RACE_5"]     = "Scourge,Forsaken,Undead";
L["RACE_6"]     = "Tauren,Shu'halo,Thunder Bluff,Mulgor,Yaung,Taunk";
L["RACE_7"]     = "Gnom";
L["RACE_8"]     = "Troll,Darkspear,Gurub";
L["RACE_9"]     = "Goblin,Kezan";
L["RACE_10"]    = "Blood Elf,Sin'dorei,Silverm,High Elf,Quel'dorei,Highborn";
L["RACE_11"]    = "Draenei,Ereda";
L["RACE_12"]    = "Fel Orc";
L["RACE_13"]    = "Naga";
L["RACE_14"]    = "Broken,Krokul";
L["RACE_15"]    = "Skeleton";
L["RACE_16"]    = "Vrykul";
L["RACE_17"]    = "Tuskarr";
L["RACE_18"]    = "Forest Troll,Amani";
L["RACE_19"]    = "Taunka";
L["RACE_20"]    = "Skelet";
L["RACE_21"]    = "Ice Troll,Drakk";
L["RACE_22"]    = "Worgen,Afflicted";
L["RACE_23"]    = "Gilnea,Unafflicted";
L["RACE_24"]    = "Pandaren,Wandering,Mainland";
L["RACE_25"]    = "Pandaren,Tushui";
L["RACE_26"]    = "Pandaren,Huojin";
L["RACE_27"]    = "Nightborn,Shal'dorei";
L["RACE_28"]    = "Highmountain";
L["RACE_29"]    = "Void Elf,Ren'dorei";
L["RACE_30"]    = "Lightforged,Argu";
L["RACE_31"]    = "Zandala,Zulda";
L["RACE_32"]    = "Kul Tira,Boralus";
L["RACE_33"]    = "Thin Human,Thin Kul Tiran";
L["RACE_34"]    = "Dark Iron,Shadowforg";
L["RACE_35"]    = "Vulpera";
L["RACE_36"]    = "Mag'har";
L["RACE_37"]    = "Mechagn";
L["RACE_BEAR"]  = "Bear,Ursin,Furbolg";
L["RACE_GNOLL"] = "Gnoll";
L["RACE_HORSE"] = "Horse,Centaur";


  -- ----------- - rpuf --------------------------------------------------------------------------------------------------------------------------------------
  -- --- layouts
L["RPUF_ABRIDGED"]         = "Standard";
L["RPUF_COMPACT"]          = "Compact";
L["RPUF_FULL"]             = "Detailed";
L["RPUF_HIDDEN"]           = "Do not display";
L["RPUF_PAPERDOLL"]        = "Portrait";
L["RPUF_THUMBNAIL"]        = "Thumbnail";
  -- --- alignments
L["BOTTOM"]                = "Bottom";
L["BOTTOMLEFT"]            = "Bottom Left";
L["BOTTOMRIGHT"]           = "Bottom Right";
L["CENTER"]                = "Center";
L["HORIZONTAL"]            = "Horizontal";
L["LEFT"]                  = "Left";
L["RIGHT"]                 = "Right";
L["TOP"]                   = "Top";
L["TOPLEFT"]               = "Top Left";
L["TOPRIGHT"]              = "Top Right";
L["VERTICAL"]              = "Vertical";
  -- --- textures
L["BACKDROP_BLIZZTOOLTIP"] = "Border";
L["BACKDROP_ORIGINAL"]     = "No Border";
L["BACKDROP_THICK_LINE"]   = "Thick Line";
L["BACKDROP_THIN_LINE"]    = "Thin Line";
L["THICK_LINE"]            = "Thick Line";
L["THIN_LINE"]             = "Thin Line";
L["SKILLS"]                = "Skills Bar";
L["SOLID"]                 = "Solid";
L["RAID"]                  = "Raid Bar";
L["STATUS_BAR"]            = "Status Bar";
L["SHADED"]                = "Shaded";
L["BAR"]                   = "Progress Bar";
L["BLANK"]                 = "Blank";
L["PORTRAIT_2D"]           = "2D Portrait";
L["PORTRAIT_3D"]           = "3D Model";

  -- ------------------ - tag display ---------------------------------------------------------------------------------------------------------------------------------
L["ABOUT"]                 = "about";
L["AGE_YEARS"]             = "years";
L["EXTRA_PRONOUN_SETS"]    = "SPIVAK;ELVERSON;HOU;THON;VE;XE;BORNSTEIN;HIR;ZIR;ZES;MER;PER;ZHE;PEH;HUMANIST"; -- based on https://en.wikipedia.org/wiki/Third-person_pronoun
L["EYE"]                   = "eye";
L["EYES"]                  = "eyes";
L["GENDERS"]               = "THEY;NEUTER;FEMALE;MALE";    -- genders are language-dependent
L["GENDER_ADULT_FEMALE"]   = "ovgpu;qlxr;shgn;shgnanev;furznyr;fur-znyr;genaal;qvpxtvey";
L["GENDER_ADULT_MALE"]     = "snttbg;snt;genc;phagobl;phagobv;obv;srzobl";
L["GENDER_ADULT_NEUTER"]   = "gbnfgre";
L["GENDER_ADULT_THEY"]     = "traqreshpx";
L["GENDER_ALIASES_FEMALE"] = "female;girl;woman;lesbian;trans woman;transwoman;transgender woman;lady";
L["GENDER_ALIASES_MALE"]   = "male;boy;man;transman;trans man;transgender man;transmasc";
L["GENDER_ALIASES_NEUTER"] = "neuter;agender;non-gendered;nongendered;robot;eunuch";
L["GENDER_ALIASES_THEY"]   = "non-binary;nonbinary;enby;enbie;genderqueer;genderfluid";
L["GENDER_CHILD_FEMALE"]   = "girl";
L["GENDER_CHILD_MALE"]     = "boy";
L["GENDER_CHILD_NEUTER"]   = "child";
L["GENDER_CHILD_THEY"]     = "child";
L["GENDER_FEMALE"]         = "Female";
L["GENDER_MALE"]           = "Male";
L["GENDER_NEUTER"]         = "Neuter";
L["GENDER_PERSON_FEMALE"]  = "woman";
L["GENDER_PERSON_MALE"]    = "man";
L["GENDER_PERSON_NEUTER"]  = "person";
L["GENDER_PERSON_THEY"]    = "person";
L["GENDER_THEY"]           = "Non-Binary";
L["GENDER_UNKNOWN"]        = "Unknown";
L["IS_DM_VERBOSE"]         = "Storyteller";
L["IS_IC"]                 = "[IC]";
L["IS_IC_VERBOSE"]         = "In Character";
L["IS_LOOKING_VERBOSE"]    = "Looking for Contact";
L["IS_NPC"]                = "[NPC]";
L["IS_NPC_VERBOSE"]        = "Non-Player Character";
L["IS_OOC"]                = "[OOC]";
L["IS_OOC_VERBOSE"]        = "Out of Character";
L["IS_OPEN"]               = "[Open]";
L["IS_STORYTELLER"]        = "[DM]";
L["IS_UNDEF"]              = "[Unk]";
L["IS_UNDEF_VERBOSE"]      = "RP Status Unknown";
L["LANG_deDE"]             = "German";
L["LANG_enGB"]             = "English";
L["LANG_enUS"]             = "English";
L["LANG_esES"]             = "Spanish";
L["LANG_esMX"]             = "Spanish";
L["LANG_frFR"]             = "French";
L["LANG_itIT"]             = "Italian";
L["LANG_koKR"]             = "Korean";
L["LANG_ptBR"]             = "Portuguese";
L["LANG_ruRU"]             = "Russian";
L["LANG_zhCN"]             = "Chinese";
L["LANG_zhTW"]             = "Chinese";
L["LETTERS"]               = " characters";
L["PH_AGE"]                = "unknown age";
L["PH_CLASS"]              = "unknown class";
L["PH_CURR"]               = "nothing currently";
L["PH_EYES"]               = "unknown eye color";
L["PH_GLANCE"]             = "...";
L["PH_HEIGHT"]             = "unknown height";
L["PH_INFO"]               = "no info available";
L["PH_LOCATION"]           = "unknown location";
L["PH_RACE"]               = "unknown race";
L["PH_TITLE"]              = "unknown title";
L["PH_WEIGHT"]             = "unknown weight";
L["PRONOUN_BORNSTEIN_A"]   = "hirs";
L["PRONOUN_BORNSTEIN_O"]   = "hir";
L["PRONOUN_BORNSTEIN_P"]   = "hir";
L["PRONOUN_BORNSTEIN_R"]   = "hirself";
L["PRONOUN_BORNSTEIN_S"]   = "ze";
L["PRONOUN_ELVERSON_A"]    = "eirs";
L["PRONOUN_ELVERSON_O"]    = "em";
L["PRONOUN_ELVERSON_P"]    = "eir";
L["PRONOUN_ELVERSON_R"]    = "emself";
L["PRONOUN_ELVERSON_S"]    = "ey";
L["PRONOUN_FEMALE_A"]      = "hers";
L["PRONOUN_FEMALE_O"]      = "her";
L["PRONOUN_FEMALE_P"]      = "her";
L["PRONOUN_FEMALE_R"]      = "herself";
L["PRONOUN_FEMALE_S"]      = "she";
L["PRONOUN_HIR_A"]         = "hirs";
L["PRONOUN_HIR_O"]         = "hir";
L["PRONOUN_HIR_P"]         = "hir";
L["PRONOUN_HIR_R"]         = "hirself";
L["PRONOUN_HIR_S"]         = "sie";
L["PRONOUN_HOU_A"]         = "hine";
L["PRONOUN_HOU_O"]         = "hee";
L["PRONOUN_HOU_P"]         = "hy";
L["PRONOUN_HOU_R"]         = "hyself";
L["PRONOUN_HOU_S"]         = "hou";
L["PRONOUN_HUMANIST_A"]    = "hus";
L["PRONOUN_HUMANIST_O"]    = "hum";
L["PRONOUN_HUMANIST_P"]    = "hus";
L["PRONOUN_HUMANIST_R"]    = "humself";
L["PRONOUN_HUMANIST_S"]    = "hu";
L["PRONOUN_MALE_A"]        = "his";
L["PRONOUN_MALE_O"]        = "him";
L["PRONOUN_MALE_P"]        = "his";
L["PRONOUN_MALE_R"]        = "himself";
L["PRONOUN_MALE_S"]        = "he";
L["PRONOUN_MER_A"]         = "zers";
L["PRONOUN_MER_O"]         = "mer";
L["PRONOUN_MER_P"]         = "zer";
L["PRONOUN_MER_R"]         = "zemself";
L["PRONOUN_MER_S"]         = "ze";
L["PRONOUN_NEUTER_A"]      = "its";
L["PRONOUN_NEUTER_O"]      = "it";
L["PRONOUN_NEUTER_P"]      = "its";
L["PRONOUN_NEUTER_R"]      = "itself";
L["PRONOUN_NEUTER_S"]      = "it";
L["PRONOUN_PEH_A"]         = "peh's";
L["PRONOUN_PEH_O"]         = "pehm";
L["PRONOUN_PEH_P"]         = "peh";
L["PRONOUN_PEH_R"]         = "pehself";
L["PRONOUN_PEH_S"]         = "peh";
L["PRONOUN_PER_A"]         = "pers";
L["PRONOUN_PER_O"]         = "per";
L["PRONOUN_PER_P"]         = "per";
L["PRONOUN_PER_R"]         = "perself";
L["PRONOUN_PER_S"]         = "per";
L["PRONOUN_SPIVAK_A"]      = "Eirs";
L["PRONOUN_SPIVAK_O"]      = "Em";
L["PRONOUN_SPIVAK_P"]      = "Eir";
L["PRONOUN_SPIVAK_R"]      = "Emself";
L["PRONOUN_SPIVAK_S"]      = "E";
L["PRONOUN_TAGS"]          = "sopar";                      -- pronouns are language-dependent -- english: -- s                                                               = subject (nominative)     "[She] is laughing." -- o = object                   "I called [her]." -- p = possessive (determiner)  "[Her] eyes gleam." -- a = absolute                 "That is [hers]." -- r = reflexive                "She likes [herself]."
L["PRONOUN_THEY_A"]        = "theirs";
L["PRONOUN_THEY_O"]        = "them";
L["PRONOUN_THEY_P"]        = "their";
L["PRONOUN_THEY_R"]        = "themselves";
L["PRONOUN_THEY_S"]        = "they";
L["PRONOUN_THON_A"]        = "thons";
L["PRONOUN_THON_O"]        = "thon";
L["PRONOUN_THON_P"]        = "thons";
L["PRONOUN_THON_R"]        = "thonself";
L["PRONOUN_THON_S"]        = "thon";
L["PRONOUN_VE_A"]          = "vis";
L["PRONOUN_VE_O"]          = "ver";
L["PRONOUN_VE_P"]          = "vis";
L["PRONOUN_VE_R"]          = "verself";
L["PRONOUN_VE_S"]          = "ve";
L["PRONOUN_XE_A"]          = "xyrs";
L["PRONOUN_XE_O"]          = "xem";
L["PRONOUN_XE_P"]          = "xyr";
L["PRONOUN_XE_R"]          = "xemself";
L["PRONOUN_XE_S"]          = "xe";
L["PRONOUN_ZES_A"]         = "zes";
L["PRONOUN_ZES_O"]         = "zem";
L["PRONOUN_ZES_P"]         = "zes";
L["PRONOUN_ZES_R"]         = "zemself";
L["PRONOUN_ZES_S"]         = "ze";
L["PRONOUN_ZHE_A"]         = "zhers";
L["PRONOUN_ZHE_O"]         = "zhim";
L["PRONOUN_ZHE_P"]         = "zher";
L["PRONOUN_ZHE_R"]         = "zhimself";
L["PRONOUN_ZHE_S"]         = "zhe";
L["PRONOUN_ZIR_A"]         = "zirs";
L["PRONOUN_ZIR_O"]         = "zir";
L["PRONOUN_ZIR_P"]         = "zir";
L["PRONOUN_ZIR_R"]         = "zirself";
L["PRONOUN_ZIR_S"]         = "zie";
L["REGION_CN"]             = "China";
L["REGION_CN_zhCN_"]       = "China";
L["REGION_EU"]             = "Europe";
L["REGION_EU_deDE_"]       = "Germany";
L["REGION_EU_enUS_"]       = "United Kingdom";
L["REGION_EU_esES_"]       = "Spain";
L["REGION_EU_frFR_"]       = "France";
L["REGION_EU_itIT_"]       = "Italy";
L["REGION_EU_ptBR_"]       = "Portugal";
L["REGION_EU_ruRU_"]       = "Russia";
L["REGION_KR"]             = "Korea";
L["REGION_KR_koKR_"]       = "Korea";
L["REGION_TW"]             = "Taiwan";
L["REGION_TW_zhTW_"]       = "Taiwan";
L["REGION_US"]             = "United States";
L["REGION_US_enUS_AEST"]   = "Oceania";
L["REGION_US_enUS_CST"]    = "US Central";
L["REGION_US_enUS_EST"]    = "US Eastern";
L["REGION_US_enUS_MST"]    = "US Mountain";
L["REGION_US_enUS_PST"]    = "US Pacific";
L["REGION_US_esMX_CST"]    = "Latin America";
L["REGION_US_ptBR_"]       = "Brazil";
L["RELATION_BUSINESS"]     = "business contact";
L["RELATION_FAMILY"]       = "family member";
L["RELATION_FRIENDLY"]     = "friend";
L["RELATION_LOVE"]         = "loved one";
L["RELATION_NEUTRAL"]      = "acquaintance";
L["RELATION_STRANGER"]     = "a stranger";
L["RELATION_UNFRIENDLY"]   = "enemy";
L["RSTATUS_0"]             = "";
L["RSTATUS_1"]             = "Single";
L["RSTATUS_2"]             = "Taken";
L["RSTATUS_3"]             = "Married";
L["RSTATUS_4"]             = "Divorced";
L["RSTATUS_5"]             = "Widowed";
L["SERVER_TYPE_PVE"]       = "Normal";
L["SERVER_TYPE_RP"]        = "Roleplaying";
L["SIZE_EXTRA_LARGE"]      = "Extra Large";
L["SIZE_EXTRA_SMALL"]      = "Extra Small";
L["SIZE_L"]                = "L";
L["SIZE_LARGE"]            = "Large";
L["SIZE_M"]                = "M";
L["SIZE_MEDIUM"]           = "Medium";
L["SIZE_S"]                = "S";
L["SIZE_SMALL"]            = "Small";
L["SIZE_U"]                = "U";
L["SIZE_UNKNOWN"]          = "Unknown";
L["SIZE_XL"]               = "XL";
L["SIZE_XS"]               = "XS";
L["STYLE_BATTLE_0"]        = "";
L["STYLE_BATTLE_0_ICON"]   = "";
L["STYLE_BATTLE_0_LONG"]   = "";
L["STYLE_BATTLE_1"]        = "PvP";
L["STYLE_BATTLE_1_ICON"]   = T_ ..Icon.BATTLE_1 .. _t;
L["STYLE_BATTLE_1_LONG"]   = "World of Warcraft PvP";
L["STYLE_BATTLE_2"]        = "TRP";
L["STYLE_BATTLE_2_ICON"]   = T_ ..Icon.BATTLE_2 .. _t;
L["STYLE_BATTLE_2_LONG"]   = "TRP roll battle";
L["STYLE_BATTLE_3"]        = "/roll";
L["STYLE_BATTLE_3_ICON"]   = T_ ..Icon.BATTLE_3 .. _t;
L["STYLE_BATTLE_3_LONG"]   = "/roll battle";
L["STYLE_BATTLE_4"]        = "Emote";
L["STYLE_BATTLE_4_ICON"]   = T_ ..Icon.BATTLE_4 .. _t;
L["STYLE_BATTLE_4_LONG"]   = "Emote battle";
L["STYLE_DEATH_0"]         = "";
L["STYLE_DEATH_0_ICON"]    = "";
L["STYLE_DEATH_0_LONG"]    = "";
L["STYLE_DEATH_1"]         = "Yes";
L["STYLE_DEATH_1_ICON"]    = T_ ..Icon.DEATH_1  .. _t;
L["STYLE_DEATH_1_LONG"]    = "Yes";
L["STYLE_DEATH_2"]         = "No";
L["STYLE_DEATH_2_ICON"]    = T_ ..Icon.DEATH_2  .. _t;
L["STYLE_DEATH_2_LONG"]    = "No";
L["STYLE_DEATH_3"]         = "Ask";
L["STYLE_DEATH_3_ICON"]    = T_ ..Icon.DEATH_3  .. _t;
L["STYLE_DEATH_3_LONG"]    = "With player permission";
L["STYLE_GUILD_0"]         = "";
L["STYLE_GUILD_0_ICON"]    = "";
L["STYLE_GUILD_0_LONG"]    = "";
L["STYLE_GUILD_1"]         = "IC";
L["STYLE_GUILD_1_ICON"]    = T_ ..Icon.GUILD_1  .. _t;
L["STYLE_GUILD_1_LONG"]    = "IC membership";
L["STYLE_GUILD_2"]         = "OOC";
L["STYLE_GUILD_2_ICON"]    = T_ ..Icon.GUILD_2  .. _t;
L["STYLE_GUILD_2_LONG"]    = "OOC membership";
L["STYLE_IC_0"]            = "";
L["STYLE_IC_0_ICON"]       = "";
L["STYLE_IC_0_LONG"]       = "";
L["STYLE_IC_1"]            = "Full";
L["STYLE_IC_1_ICON"]       = T_ ..Icon.IC_1     .. _t;
L["STYLE_IC_1_LONG"]       = "Full-time; no OOC";
L["STYLE_IC_2"]            = "Mostly";
L["STYLE_IC_2_ICON"]       = T_ ..Icon.IC_2     .. _t;
L["STYLE_IC_2_LONG"]       = "Most of the time";
L["STYLE_IC_3"]            = "Sometimes";
L["STYLE_IC_3_ICON"]       = T_ ..Icon.IC_3     .. _t;
L["STYLE_IC_3_LONG"]       = "Mid-time";
L["STYLE_IC_4"]            = "Casual";
L["STYLE_IC_4_ICON"]       = T_ ..Icon.IC_4     .. _t;
L["STYLE_IC_4_LONG"]       = "Casual";
L["STYLE_IC_5"]            = "Never";
L["STYLE_IC_5_ICON"]       = T_ ..Icon.IC_5     .. _t;
L["STYLE_IC_5_LONG"]       = "Full-time OOC; not a RP character";
L["STYLE_INJURY_0"]        = "";
L["STYLE_INJURY_0_ICON"]   = "";
L["STYLE_INJURY_0_LONG"]   = "";
L["STYLE_INJURY_1"]        = "";
L["STYLE_INJURY_1_ICON"]   = T_ ..Icon.INJURY_1 .. _t;
L["STYLE_INJURY_1_LONG"]   = "Yes";
L["STYLE_INJURY_2"]        = "No";
L["STYLE_INJURY_2_ICON"]   = T_ ..Icon.INJURY_2 .. _t;
L["STYLE_INJURY_2_LONG"]   = "No";
L["STYLE_INJURY_3"]        = "Ask";
L["STYLE_INJURY_3_ICON"]   = T_ ..Icon.INJURY_3 .. _t;
L["STYLE_INJURY_3_LONG"]   = "With player permission";
L["STYLE_ROMANCE_0"]       = "";
L["STYLE_ROMANCE_0_ICON"]  = "";
L["STYLE_ROMANCE_0_LONG"]  = "";
L["STYLE_ROMANCE_1"]       = "Yes";
L["STYLE_ROMANCE_1_ICON"]  = T_ ..Icon.ROMANCE_1.. _t;
L["STYLE_ROMANCE_1_LONG"]  = "Yes";
L["STYLE_ROMANCE_2"]       = "No";
L["STYLE_ROMANCE_2_ICON"]  = T_ ..Icon.ROMANCE_2.. _t;
L["STYLE_ROMANCE_2_LONG"]  = "No";
L["STYLE_ROMANCE_3"]       = "Ask";
L["STYLE_ROMANCE_3_ICON"]  = T_ ..Icon.ROMANCE_3.. _t;
L["STYLE_ROMANCE_3_LONG"]  = "With player permission";
L["TO_VALUE"]              = " to ";
L["UNDEF_AGE"]             = "unknown age";
L["UNDEF_EYES"]            = "nondescript";
L["UNDEF_LOCATION"]        = "an unknown location";
L["WORD_MY"]               = "my";
L["WORD_YOUR"]             = "your";
L["XP_0"]                  = "";
L["XP_0_ICON"]             = "";
L["XP_0_SHORT"]            = "";
L["XP_1"]                  = "Rookie";
L["XP_1_ICON"]             = T_ ..Icon.XP_1     .. _t;
L["XP_1_SHORT"]            = "[R]";
L["XP_2"]                  = "Experienced";
L["XP_2_ICON"]             = T_ ..Icon.XP_1     .. _t;
L["XP_2_SHORT"]            = "[E]";
L["XP_3"]                  = "Volunteer";
L["XP_3_ICON"]             = T_ ..Icon.XP_1     .. _t;
L["XP_3_SHORT"]            = "[V]";
L["YEARS_AGO"]             = "ago";
L["YEARS_OLD"]             = "years old";

-- tagdata -----------------------------------------------------------------------------------------------------------------------------
-- groups
L["TAG_GROUP_APPEARANCE_HELP"]            = "These tags describe the unit's facial and bodily characteristics,";
L["TAG_GROUP_APPEARANCE_TITLE"]           = "Appearance Tags";
L["TAG_GROUP_BASICS_HELP"]                = "These tags can be used to display basic information such as name, class, race, and title.";
L["TAG_GROUP_BASICS_TITLE"]               = "Basic Tags";
L["TAG_GROUP_COLORS_HELP"]                = "All color tags change the text color until the end of the current tag set, or another color tag is used. Many of the colors can be changed in [settings](setting:colorsOptions). [Relative colors](setting:colorsOptions/comparison) are based on your own values compared to the unit's values.";
L["TAG_GROUP_COLORS_TITLE"]               = "Color Tags";
L["TAG_GROUP_ELVUI_HELP"]                 = "These are custom tags added by the ElvUI developers that you can use alongside your RPTAGS tags. This is a short list of the tags most useful to roleplayers.";
L["TAG_GROUP_ELVUI_TITLE"]                = "Appendix: ElvUI Tags";
L["TAG_GROUP_FORMATTING_HELP"]            = "These tags can insert blank lines.";
L["TAG_GROUP_FORMATTING_TITLE"]           = "Formatting Tags";
L["TAG_GROUP_GENDER_HELP"]                = "RPTAGS understands a number of genders and pronouns. It will check a unit's 'Gender' or 'Pronouns' custom fields, and their 'Race' setting, before using the game gender. (See <a href= 'https://en.wikipedia.org/wiki/Third-person_pronoun#Summary'>Wikipedia</a> for details on the pronouns supported by RPTAGS.";
L["TAG_GROUP_GENDER_TITLE"]               = "Gender and Pronoun Tags";
L["TAG_GROUP_GLANCE_HELP"]                = "A unit can have up to five at-first-glance fields. Each field has an associated title, text, and icon.";
L["TAG_GROUP_GLANCE_TITLE"]               = "At First Glance Tags";
L["TAG_GROUP_HISTORY_HELP"]               = "These tags give information based on the unit's age, birthplace, or custom birthday field.";
L["TAG_GROUP_HISTORY_TITLE"]              = "History Tags";
L["TAG_GROUP_ICONS_HELP"]                 = "These tags display inline icons based on various fields.";
L["TAG_GROUP_ICONS_TITLE"]                = "Icon Tags";
L["TAG_GROUP_OUF_HELP"]                   = "oUF is the unit frame structure upon which RPTAGS is built. It provides tags mostly related to game play, but you can mix-and-match these with the tags from RPTAGS. These tags are those which are most useful in a roleplaying setting.";
L["TAG_GROUP_OUF_TITLE"]                  = "Appendix: oUF Frames";
L["TAG_GROUP_PROFILE_HELP"]               = "These tags include those based on your note and relationship settings for the unit, and the unit's roleplaying client.";
L["TAG_GROUP_PROFILE_TITLE"]              = "Profile and Client Tags";
L["TAG_GROUP_SERVER_HELP"]                = "These tags return information about the unit's home server.";
L["TAG_GROUP_SERVER_TITLE"]               = "Server Tags";
L["TAG_GROUP_SOCIAL_HELP"]                = "The unit's role in society are defined by these tags.";
L["TAG_GROUP_SOCIAL_TITLE"]               = "Social Tags";
L["TAG_GROUP_STATUS_HELP"]                = "These tags are based on in-character/out-of-character status, the currently/oocinfo setting, or the roleplaying experience setting.";
L["TAG_GROUP_STATUS_TITLE"]               = "Roleplaying Status Tags";
L["TAG_GROUP_STYLE_HELP"]                 = "These tags are based on the unit's roleplay style preferences.";
L["TAG_GROUP_STYLE_TITLE"]                = "Roleplaying Style Tags";
L["TAG_GROUP_TARGET_HELP"]                = "These tags don't draw data from the unit's profile, but from that unit's target.";
L["TAG_GROUP_TARGET_TITLE"]               = "Target Tags";
-- subtitles in the tag list
L["TAG_SUBTITLE_Absolute Pronouns"]       = "Absolute Pronouns";
L["TAG_SUBTITLE_All Glances"]             = "All Glances";
L["TAG_SUBTITLE_All Style Preferences"]   = "All Style Preferences";
L["TAG_SUBTITLE_At First-Glance Icons"]   = "At First-Glance Icons";
L["TAG_SUBTITLE_Claims"]                  = "Claims";
L["TAG_SUBTITLE_Colors"]                  = "Colors";
L["TAG_SUBTITLE_Comparison Colors"]       = "Comparison Colors";
L["TAG_SUBTITLE_Conditional Punctuation"] = "Conditional Punctuation";
L["TAG_SUBTITLE_Currently"]               = "Currently";
L["TAG_SUBTITLE_Glance 1"]                = "Glance 1";
L["TAG_SUBTITLE_Glance 2"]                = "Glance 2";
L["TAG_SUBTITLE_Glance 3"]                = "Glance 3";
L["TAG_SUBTITLE_Glance 4"]                = "Glance 4";
L["TAG_SUBTITLE_Glance 5"]                = "Glance 5";
L["TAG_SUBTITLE_Hilite Colors"]           = "Hilite Colors";
L["TAG_SUBTITLE_Icons"]                   = "Icons";
L["TAG_SUBTITLE_Nominative Pronouns"]     = "Nominative Pronouns";
L["TAG_SUBTITLE_Note Indicator Icons"]    = "Note Indicator Icons";
L["TAG_SUBTITLE_Note Matches"]            = "Note Matches";
L["TAG_SUBTITLE_Object Pronouns"]         = "Object Pronouns";
L["TAG_SUBTITLE_Possessive Pronouns"]     = "Possessive Pronouns";
L["TAG_SUBTITLE_RP Experience Icons"]     = "RP Experience Icons";
L["TAG_SUBTITLE_RP Style Icons"]          = "RP Style Icons";
L["TAG_SUBTITLE_RP Styles"]               = "RP Styles";
L["TAG_SUBTITLE_RP Styles, long form"]    = "RP Styles, long form";
L["TAG_SUBTITLE_Reflexive Pronouns"]      = "Reflexive Pronouns";
L["TAG_SUBTITLE_Relation Tags"]           = "Relation Tags";
L["TAG_SUBTITLE_Roleplaying Client Tags"] = "Roleplaying Client Tags";
L["TAG_SUBTITLE_Roleplaying Experience"]  = "Roleplaying Experience";
L["TAG_SUBTITLE_Shorthand Tag"]           = "Shorthand Tag";
L["TAG_SUBTITLE_rp:Specific Clients"]     = "rp:Specific Clients";
-- specific tags
L["TAG_afk_DESC"]                         = "AFK Indicator";
L["TAG_br_DESC"]                          = "Line Break";
L["TAG_class_DESC"]                       = "Game Class";
L["TAG_classification_DESC"]              = "Unit Classification";
L["TAG_classificationcolor_DESC"]         = "Classification Color";
L["TAG_classpowercolor_DESC"]             = "Class Power Color";
L["TAG_creature_DESC"]                    = "Creature Type";
L["TAG_dead_DESC"]                        = "Death Indicator";
L["TAG_difficulty_DESC"]                  = "Relative Difficulty";
L["TAG_difficultycolor_DESC"]             = "Difficulty Color";
L["TAG_faction_DESC"]                     = "Game Faction";
L["TAG_group_DESC"]                       = "Group Number in Raid";
L["TAG_guild_DESC"]                       = "Guild Name";
L["TAG_level_DESC"]                       = "Character Level";  -- these need to be orderd by the description, as done here
L["TAG_name:abbrev_DESC"]                 = "Game Name, abbreviated";
L["TAG_name:long_DESC"]                   = "Game Name, 20 letters";
L["TAG_name:medium_DESC"]                 = "Game Name, 15 letters";
L["TAG_name:short_DESC"]                  = "Game Name, 10 letters";
L["TAG_name:veryshort_DESC"]              = "Game Name, 5 letters";
L["TAG_name_DESC"]                        = "Game Name";
L["TAG_namecolor_DESC"]                   = "Class Color";
L["TAG_nocolor_DESC"]                     = "Reset Colors";
L["TAG_offline_DESC"]                     = "Offline Indicator";
L["TAG_p_DESC"]                           = "Paragraph Break";
L["TAG_pvp_DESC"]                         = "PVP Indicator";
L["TAG_pvptimer_DESC"]                    = "PvP Cooldown Timer";
L["TAG_race_DESC"]                        = "Game Race";
L["TAG_realm_DESC"]                       = "Server Name";
L["TAG_resting_DESC"]                     = "Resting Indicator, self only";
L["TAG_rp:A_DESC"]                        = "Hers, His, Theirs, Its";
L["TAG_rp:O_DESC"]                        = "Her, Him, Them, It";
L["TAG_rp:P_DESC"]                        = "Her, His, Their, Its";
L["TAG_rp:R_DESC"]                        = "Herself, Himself, Themselves";
L["TAG_rp:S_DESC"]                        = "She, He, They, It";
L["TAG_rp:a_DESC"]                        = "hers, his, theirs, its";
L["TAG_rp:actor_DESC"]                    = "Actor";
L["TAG_rp:actor_LABEL"]                   = "Actor";
L["TAG_rp:age_DESC"]                      = "Age";
L["TAG_rp:age_LABEL"]                     = "Age";
L["TAG_rp:agecolor_DESC"]                 = "Relative Age Color";
L["TAG_rp:alignment_DESC"]                = "Alignment";
L["TAG_rp:alignment_LABEL"]               = "Alignment";
L["TAG_rp:birthday_DESC"]                 = "Birthday";
L["TAG_rp:birthday_LABEL"]                = "Birthday";
L["TAG_rp:birthplace_DESC"]               = "Birthplace";
L["TAG_rp:birthplace_LABEL"]              = "Birthplace";
L["TAG_rp:body_DESC"]                     = "Body Shape";
L["TAG_rp:body_LABEL"]                    = "Body Shape";
L["TAG_rp:bodyclaim_DESC"]                = "Body Claim";
L["TAG_rp:bodyclaim_LABEL"]               = "Body Claim";
L["TAG_rp:class_DESC"]                    = "Class";
L["TAG_rp:class_LABEL"]                   = "Class";
L["TAG_rp:client-full_DESC"]              = "Name and Version";
L["TAG_rp:client-full_LABEL"]             = "RP Client Version";
L["TAG_rp:client-icon_DESC"]              = "RP Client Icon";
L["TAG_rp:client-short_DESC"]             = "Abbreviation";
L["TAG_rp:client-version_DESC"]           = "Version";
L["TAG_rp:client-version_LABEL"]          = "RP Client Version";
L["TAG_rp:client_DESC"]                   = "Client Name";
L["TAG_rp:client_LABEL"]                  = "RP Client";
L["TAG_rp:color_DESC"]                    = "Profile Color";
L["TAG_rp:curr_DESC"]                     = "IC Currently";
L["TAG_rp:curr_LABEL"]                    = "Currently";
L["TAG_rp:experience_DESC"]               = "Rookie, Experienced, or Volunteer";
L["TAG_rp:experience_LABEL"]              = "RP Experience";
L["TAG_rp:extended_DESC"]                 = "TRP3 Extended indicator";
L["TAG_rp:eyecolor_DESC"]                 = "Eye Color";
L["TAG_rp:eyes_DESC"]                     = "Eyes";
L["TAG_rp:eyes_LABEL"]                    = "Eyes";
L["TAG_rp:faceclaim_DESC"]                = "Face Claim";
L["TAG_rp:faceclaim_LABEL"]               = "Face Claim";
L["TAG_rp:family_DESC"]                   = "Family";
L["TAG_rp:family_LABEL"]                  = "Family";
L["TAG_rp:firstname_DESC"]                = "First Name";
L["TAG_rp:firstname_LABEL"]               = "First Name";
L["TAG_rp:friendcolor_DESC"]              = "Friend Color";
L["TAG_rp:fulltitle_DESC"]                = "Long Title";
L["TAG_rp:fulltitle_LABEL"]               = "Title";
L["TAG_rp:gender_DESC"]                   = "Gender";
L["TAG_rp:gender_LABEL"]                  = "Gender";
L["TAG_rp:gendercolor_DESC"]              = "Gender Color";
L["TAG_rp:gendericon_DESC"]               = "Gender Icon";
L["TAG_rp:glance-1-full_DESC"]            = "Icon, Title, and Text";
L["TAG_rp:glance-1-icon_DESC"]            = "Glance Icon 1";
L["TAG_rp:glance-1-text_DESC"]            = "Text";
L["TAG_rp:glance-1_DESC"]                 = "Title";
L["TAG_rp:glance-2-full_DESC"]            = "Icon, Title, and Text";
L["TAG_rp:glance-2-icon_DESC"]            = "Glance Icon 2";
L["TAG_rp:glance-2-text_DESC"]            = "Text";
L["TAG_rp:glance-2_DESC"]                 = "Title";
L["TAG_rp:glance-3-full_DESC"]            = "Icon, Title, and Text";
L["TAG_rp:glance-3-icon_DESC"]            = "Glance Icon 3";
L["TAG_rp:glance-3-text_DESC"]            = "Text";
L["TAG_rp:glance-3_DESC"]                 = "Title";
L["TAG_rp:glance-4-full_DESC"]            = "Icon, Title, and Text";
L["TAG_rp:glance-4-icon_DESC"]            = "Glance Icon 4";
L["TAG_rp:glance-4-text_DESC"]            = "Text";
L["TAG_rp:glance-4_DESC"]                 = "Title";
L["TAG_rp:glance-5-full_DESC"]            = "Icon, Title, and Text";
L["TAG_rp:glance-5-icon_DESC"]            = "Glance Icon 5";
L["TAG_rp:glance-5-text_DESC"]            = "Text";
L["TAG_rp:glance-5_DESC"]                 = "Title";
L["TAG_rp:glance-full_DESC"]              = "All Icons, Titles, Text";
L["TAG_rp:glance-full_LABEL"]             = "At First Glance";
L["TAG_rp:glance-icons_DESC"]             = "All Glance Icons";
L["TAG_rp:glance_DESC"]                   = "All Titles";
L["TAG_rp:glance_LABEL"]                  = "At First Glance";
L["TAG_rp:guild-rank_DESC"]               = "Guild Rank";
L["TAG_rp:guild-rank_LABEL"]              = "Guild Rank";
L["TAG_rp:guild-status_DESC"]             = "Guild IC or OOC";
L["TAG_rp:guild_DESC"]                    = "Guild Name";
L["TAG_rp:guild_LABEL"]                   = "Guild";
L["TAG_rp:guildcolor_DESC"]               = "Guild Color";
L["TAG_rp:guildstatuscolor_DESC"]         = "Guild Status Color";
L["TAG_rp:hair_DESC"]                     = "Hair";
L["TAG_rp:hair_LABEL"]                    = "Hair";
L["TAG_rp:height_DESC"]                   = "Height";
L["TAG_rp:height_LABEL"]                  = "Height";
L["TAG_rp:heightcolor_DESC"]              = "Relative Height Color";
L["TAG_rp:hilite-1_DESC"]                 = "Hilite Color 1";
L["TAG_rp:hilite-2_DESC"]                 = "Hilite Color 2";
L["TAG_rp:hilite-3_DESC"]                 = "Hilite Color 3";
L["TAG_rp:home_DESC"]                     = "Residence";
L["TAG_rp:home_LABEL"]                    = "Home";
L["TAG_rp:house_DESC"]                    = "House Name";
L["TAG_rp:house_LABEL"]                   = "House Name";
L["TAG_rp:ic_DESC"]                       = "IC Indicator";
L["TAG_rp:icon_DESC"]                     = "Profile Icon";
L["TAG_rp:info_DESC"]                     = "OOC Info";
L["TAG_rp:info_LABEL"]                    = "OOC Info";
L["TAG_rp:lastname_DESC"]                 = "Last Name";
L["TAG_rp:lastname_LABEL"]                = "Last Name";
L["TAG_rp:markings_DESC"]                 = "Markings";
L["TAG_rp:markings_LABEL"]                = "Markings";
L["TAG_rp:motto_DESC"]                    = "Motto";
L["TAG_rp:motto_LABEL"]                   = "Motto";
L["TAG_rp:mrp_DESC"]                      = "MyRolePlay indicator";
L["TAG_rp:name-known_DESC"]               = "Name, only if known";
L["TAG_rp:name-known_LABEL"]              = "Name";
L["TAG_rp:name_DESC"]                     = "Name";
L["TAG_rp:name_LABEL"]                    = "Name";
L["TAG_rp:nick-quoted_DESC"]              = "Nickname, in quotes";
L["TAG_rp:nick-quoted_LABEL"]             = "Nickname";
L["TAG_rp:nick_DESC"]                     = "Nickname";
L["TAG_rp:nick_LABEL"]                    = "Nickname";
L["TAG_rp:note-1-icon_DESC"]              = "Keyword 1 Icon";
L["TAG_rp:note-1_DESC"]                   = "Keyword 1";
L["TAG_rp:note-1_LABEL"]                  = "Note";
L["TAG_rp:note-2-icon_DESC"]              = "Keyword 2 Icon";
L["TAG_rp:note-2_DESC"]                   = "Keyword 2";
L["TAG_rp:note-2_LABEL"]                  = "Note";
L["TAG_rp:note-3-icon_DESC"]              = "Keyword 3 Icon";
L["TAG_rp:note-3_DESC"]                   = "Keyword 3";
L["TAG_rp:note-3_LABEL"]                  = "Note";
L["TAG_rp:npc_DESC"]                      = "NPC Indicator";
L["TAG_rp:o_DESC"]                        = "her, him, them, it";
L["TAG_rp:ooc_DESC"]                      = "OOC Indicator";
L["TAG_rp:open_DESC"]                     = "Looking for Contact Indicator";
L["TAG_rp:p_DESC"]                        = "her, his, their, its";
L["TAG_rp:partycolor_DESC"]               = "Party Color";
L["TAG_rp:physiognomy_DESC"]              = "Physiognomy";
L["TAG_rp:physiognomy_LABEL"]             = "Physiognomy";
L["TAG_rp:piercings_DESC"]                = "Piercings";
L["TAG_rp:piercings_LABEL"]               = "Piercings";
L["TAG_rp:profilesize_DESC"]              = "Profile Size";
L["TAG_rp:profilesize_LABEL"]             = "Profile Size";
L["TAG_rp:profilesizecolor_DESC"]         = "Profile Size Color";
L["TAG_rp:pronouns_DESC"]                 = "Preferred Pronouns";
L["TAG_rp:pronouns_LABEL"]                = "Pronouns";
L["TAG_rp:pvpicon-square_DESC"]           = "Square PVP Icon";
L["TAG_rp:pvpicon_DESC"]                  = "PVP Icon";
L["TAG_rp:r_DESC"]                        = "herself, himself, themselves";
L["TAG_rp:race_DESC"]                     = "Race";
L["TAG_rp:race_LABEL"]                    = "Race";
L["TAG_rp:raceicon_DESC"]                 = "Race Icon";
L["TAG_rp:relation-who_DESC"]             = "Relation Description";
L["TAG_rp:relation-who_LABEL"]            = "Relation";
L["TAG_rp:relation_DESC"]                 = "Relation Type";
L["TAG_rp:relation_LABEL"]                = "Relation";
L["TAG_rp:relationcolor_DESC"]            = "Relation Color";
L["TAG_rp:relationicon_DESC"]             = "Relation Icon";
L["TAG_rp:religion_DESC"]                 = "Religion";
L["TAG_rp:religion_LABEL"]                = "Religion";
L["TAG_rp:rookie-icon_DESC"]              = "Beginner Icon";
L["TAG_rp:rookie_DESC"]                   = "Rookie RPer indicator";
L["TAG_rp:rstatus_DESC"]                  = "Relationship Status";
L["TAG_rp:rstatus_LABEL"]                 = "Relationship Status";
L["TAG_rp:s_DESC"]                        = "she, he, they, it";
L["TAG_rp:server-abbr_DESC"]              = "Server Name, abbreviated";
L["TAG_rp:server-abbr_LABEL"]             = "Server";
L["TAG_rp:server-dash_DESC"]              = "A hyphen, if not your server";
L["TAG_rp:server-lang-short_DESC"]        = "Server Language, abbreviated";
L["TAG_rp:server-lang-short_LABEL"]       = "Server Language";
L["TAG_rp:server-lang_DESC"]              = "Server Language";
L["TAG_rp:server-lang_LABEL"]             = "Server Language";
L["TAG_rp:server-mine_DESC"]              = "Server Name, if yours";
L["TAG_rp:server-mine_LABEL"]             = "Server";
L["TAG_rp:server-notmine_DESC"]           = "Server Name, if not yours";
L["TAG_rp:server-notmine_LABEL"]          = "Server";
L["TAG_rp:server-region_DESC"]            = "Server Region";
L["TAG_rp:server-region_LABEL"]           = "Server Region";
L["TAG_rp:server-star_DESC"]              = "An asterisk, if not your server";
L["TAG_rp:server-subregion_DESC"]         = "Server Subregion";
L["TAG_rp:server-subregion_LABEL"]        = "Server Subregion";
L["TAG_rp:server-type-short_DESC"]        = "Server Type, abbreviated";
L["TAG_rp:server-type-short_LABEL"]       = "Server Type";
L["TAG_rp:server-type_DESC"]              = "Server Type";
L["TAG_rp:server-type_LABEL"]             = "Server Type";
L["TAG_rp:server_DESC"]                   = "Server Name";
L["TAG_rp:server_LABEL"]                  = "Server";
L["TAG_rp:sexuality_DESC"]                = "Sexuality";
L["TAG_rp:sexuality_LABEL"]               = "Sexuality";
L["TAG_rp:sizebuff_DESC"]                 = "Size Buff";
L["TAG_rp:sizebuff_LABEL"]                = "Size Buff";
L["TAG_rp:sizebufficon_DESC"]             = "Size Buff Icon";
L["TAG_rp:status_DESC"]                   = "Status (IC, OOC, or NPC)";
L["TAG_rp:status_LABEL"]                  = "Status";
L["TAG_rp:statuscolor_DESC"]              = "Status Color";
L["TAG_rp:statusicon_DESC"]               = "IC/OOC Status Icon";
L["TAG_rp:storyteller_DESC"]              = "Storyteller Indicator";
L["TAG_rp:style-ask_DESC"]                = "All 'Ask First'";
L["TAG_rp:style-ask_LABEL"]               = "Inquire About";
L["TAG_rp:style-battle-icon_DESC"]        = "Battles";
L["TAG_rp:style-battle-long_DESC"]        = "Roleplay Battle Resolution";
L["TAG_rp:style-battle-long_LABEL"]       = "Roleplay Battle Resolution";
L["TAG_rp:style-battle_DESC"]             = "RP Battles";
L["TAG_rp:style-battle_LABEL"]            = "RP Battles";
L["TAG_rp:style-death-icon_DESC"]         = "Death";
L["TAG_rp:style-death-long_DESC"]         = "Accept Character Death";
L["TAG_rp:style-death-long_LABEL"]        = "Accept Character Death";
L["TAG_rp:style-death_DESC"]              = "Death";
L["TAG_rp:style-death_LABEL"]             = "Death";
L["TAG_rp:style-guild-icon_DESC"]         = "IC Guild";
L["TAG_rp:style-guild-long_DESC"]         = "Guild Membership IC/OOC";
L["TAG_rp:style-guild-long_LABEL"]        = "Guild Membership";
L["TAG_rp:style-guild_DESC"]              = "IC Guild";
L["TAG_rp:style-guild_LABEL"]             = "Guild";
L["TAG_rp:style-ic-icon_DESC"]            = "IC Frequency";
L["TAG_rp:style-ic-long_DESC"]            = "In-Character Frequence";
L["TAG_rp:style-ic-long_LABEL"]           = "In-Character Frequence";
L["TAG_rp:style-ic_DESC"]                 = "IC Frequency";
L["TAG_rp:style-ic_LABEL"]                = "IC";
L["TAG_rp:style-icons_DESC"]              = "All RP Style Icons";
L["TAG_rp:style-injury-icon_DESC"]        = "Injury";
L["TAG_rp:style-injury-long_DESC"]        = "Accept Character Injury";
L["TAG_rp:style-injury-long_LABEL"]       = "Accept Character Injury";
L["TAG_rp:style-injury_DESC"]             = "Injury";
L["TAG_rp:style-injury_LABEL"]            = "Injury";
L["TAG_rp:style-no_DESC"]                 = "All 'No'";
L["TAG_rp:style-no_LABEL"]                = "Declined RP Styles";
L["TAG_rp:style-romance-icon_DESC"]       = "Romance";
L["TAG_rp:style-romance-long_DESC"]       = "Accept Character Romance";
L["TAG_rp:style-romance-long_LABEL"]      = "Accept Character Romance";
L["TAG_rp:style-romance_DESC"]            = "Romance";
L["TAG_rp:style-romance_LABEL"]           = "Romance";
L["TAG_rp:style-yes_DESC"]                = "All 'Yes'";
L["TAG_rp:style-yes_LABEL"]               = "Accepted RP Styles";
L["TAG_rp:target-class_DESC"]             = "Class";
L["TAG_rp:target-class_LABEL"]            = "Target's Class";
L["TAG_rp:target-color_DESC"]             = "Character Color";
L["TAG_rp:target-details_DESC"]           = "All Target's Details";
L["TAG_rp:target-details_LABEL"]          = "Target";
L["TAG_rp:target-gender_DESC"]            = "Gender";
L["TAG_rp:target-gender_LABEL"]           = "Target's Gender";
L["TAG_rp:target-gendercolor_DESC"]       = "Gender Color";
L["TAG_rp:target-gendericon_DESC"]        = "Gender Icon";
L["TAG_rp:target-icon_DESC"]              = "Character Icon";
L["TAG_rp:target-race_DESC"]              = "Race";
L["TAG_rp:target-race_LABEL"]             = "Target's Race";
L["TAG_rp:target-status_DESC"]            = "Status";
L["TAG_rp:target-statuscolor_DESC"]       = "Status Color";
L["TAG_rp:target-statusicon_DESC"]        = "Status Icon";
L["TAG_rp:target-title_DESC"]             = "Title";
L["TAG_rp:target-title_LABEL"]            = "Target's Title";
L["TAG_rp:target_DESC"]                   = "Name";
L["TAG_rp:target_LABEL"]                  = "Target";
L["TAG_rp:tattoos_DESC"]                  = "Tattoos";
L["TAG_rp:tattoos_LABEL"]                 = "Tattoos";
L["TAG_rp:title_DESC"]                    = "Honorific";
L["TAG_rp:title_LABEL"]                   = "Honorific";
L["TAG_rp:tribe_DESC"]                    = "Tribe";
L["TAG_rp:tribe_LABEL"]                   = "Tribe";
L["TAG_rp:trp_DESC"]                      = "Total RP 3 indicator";
L["TAG_rp:voiceclaim_DESC"]               = "Voice Claim";
L["TAG_rp:voiceclaim_LABEL"]              = "Voice Claim";
L["TAG_rp:volunteer-icon_DESC"]           = "Volunteer Icon";
L["TAG_rp:volunteer_DESC"]                = "Volunteer RPer indicator";
L["TAG_rp:weight_DESC"]                   = "Weight";
L["TAG_rp:weight_LABEL"]                  = "Weight";
L["TAG_rp:weightcolor_DESC"]              = "Relative Weight Color";
L["TAG_rp:xp-icon_DESC"]                  = "Icon";
L["TAG_rp:xp_DESC"]                       = "[R], [E], or [V]";
L["TAG_rp:xrp_DESC"]                      = "XRP indicator";
L["TAG_rp:years-ago_DESC"]                = "Age, Years Ago Born";
L["TAG_rp:years-ago_LABEL"]               = "Born";
L["TAG_rp:years-old_DESC"]                = "Age, in Years Old";
L["TAG_rp:years-old_LABEL"]               = "Age";
L["TAG_rp:years_DESC"]                    = "Age, in Years";
L["TAG_rp:years_LABEL"]                   = "Age";
L["TAG_sex_DESC"]                         = "Game Sex";
L["TAG_smartclass_DESC"]                  = "Class or Creature Type";
L["TAG_status_DESC"]                      = "Game Status Indicator";
L["TAG_statustimer_DESC"]                 = "Status Timer";
L["TAG_target_DESC"]                      = "Target's Name";

-- help files -------------------------------------------------------------------------------------------------------------------------------------
L["HTML_INTRO"] = 
[==========================================================================[
<h1>Introduction</h1>

<p>RPTAGS is an addon that lets you create special panels, called unit frames, to display roleplaying information of your
choice, drawn from roleplaying addons such as <a href="http:mrp">MyRolePlay</a>, <a href="http:trp3">Total RP 3</a>, or
<a href="https:xrp">XRP</a>.</p>

<p>In addition, you can use any tags from RPTAGS in <a href="http:elvui">ElvUI</a>, although <a href="htts:elvui">ElvUI</a> is not required for RPTAGS.</p>

<h2>What's a Unit Frame?</h2>

<p>A unit frame is a window on your screen that appears when a certain type of unit exists in the
game. For example, the Target Unit Frame is shown when you target someone.</p>

<p>RPTAGS works with three types of unit frame: Player, Target, and Focus. When we talk about showing
a unit's info, that means that your RP info is displayed in the player frame, your target's in the target frame,
and your focus, if any, in the focus frame.</p>

<h2>What's a Tag?</h2>

<p>A tag, in this context, refers to a string of text that you asisgn to locations on the unit frames known
as panels. Tags look like this:</p>

<h3> &nbsp; &nbsp; [rp:tagname]</h3>

<p>There are nearly 200 RPTAGS you can use, as well as several dozen provided by oUF, the framework addon upon
which RPTAGS is built. Some of the most useful tags include:</p>

<h3> &nbsp; &nbsp;  [rp:name], [rp:race], [rp:class], [rp:icon], [rp:color], [rp:status], [rp:curr].</h3>

<h2>What are Panels?</h2>

<p>There are two types of panels: panels for text tags, and panels for icons. The text panels are Name Panel, Info Panel,
Details Panel, and Status Bar. The icon panels are numbered from one to six.</p>

<p>You can customize what is shown in each panel; in addition, you can also set the tooltips for when you move your
mouse over that part of the unit frame.</p>

<h2>What's a Layout?</h2>

<p>There are five layouts provided by RPTAGS. Standard Layout shows all six icons, the name panel, info panel, and
status bar. The Compact Layout only shows the first icon, name panel, and info panel. The Detailed Layout
displays an animated 3-D portrait, all six icons, name panel, info panel, status bar, and a large space for the details
panel. Portrait Layout is modeled after Blizzard's "paper doll" character screen and features a larger portrait,
the name panel, the info panel, and all six icon slots. The Thumbnail Layout shows a small portrait, the name
panel, and a single icon.</p>

<p>You can set each panel to a different layout if you wish.</p>

<h2>Getting Started</h2>

<p>By default, RPTAGS begins with a set of predefined tags, but you can change those to whatever you wish. For example,
the default tag found in the Name Panel is [rp:color][rp:name]. The first tag, [rp:color], changes the
color of the following text to the the unit's personal color or custom class color. Then the second tag inserts the
roleplaying name of the character.</p>

<p>You can edit the content of a panel by right-clicking on that part of the frame, or by using the RPTAGS options
panels. Your changes will immediately be reflected in the player frame, and also in whoever you target or focus on.</p>

<h2>Further Help</h2>

<p>If you need more assistance, you can peruse the rest of these help topics or ask for assistance on the
<a href="http:discord">RPTAGS discord</a> or ask <a href="http:twitter">Oraibi on Twitter</a>.
The easiest way to learn is to just start editing tags and experimenting. Have fun!</p>
]==========================================================================];

L["HTML_OPTIONS"] = 
[==========================================================================[
<h1>Options</h1>

<p>All settings are available through the RPTAGS options system.</p>

<p><a href="rpconfig:general">General Settings</a> let you determine what messages to show, how to display certain tags, and how to respond
to notes that you've set on a unit. </p>

<p><a href="rpconfig:colors">Colors Settings</a> let you change the various colors used by RPTAGS.</p>

<p>You can use the <a href="rpconfig:rpuf">rp:UnitFrames Settings</a> control when and where RPUF will be shown.</p>

<p>You can adjust the layout of RPUF in the <a href="rpconfig:layout">rp:UnitFrames Layout Settings</a>.</p>

<p>To set the tags in each panel and icon slot, as well as tooltips for the same, use the
<a href="rpconfig:tags">rp:UnitFrames Panels Settings</a>.</p>

<p>If you want to restore the settings on a particular page to their default values, use the "Defaults" button in the lower left corner of the Interface window.</p>
]==========================================================================];

L["HTML_BINDINGS"] = 
[==========================================================================[
<h1>Key Bindings</h1>

<p>RPTAGS offers a number of keybinds to allow you to control the addon with a single keypress.</p>

<p>Key bindings are accessible through the standard <a href="rpconfig:keybind">WoW Key Bindings Menu</a>, on the AddOns sub-menu.</p>
]==========================================================================];

L["HTML_RECIPES"] = 
[==========================================================================[
<h1>Recipes</h1>

<p>These "recipes" display how to do common uses of RPTAGS.</p>

<h3>[rp:color][rp:title] [rp:name], [rp:title-long][nocolor]</h3>

<p> Show someone's short title, name, and long title.</p>

<h3>[rp:eyecolor][rp:eyes-label][nocolor]</h3>

<p> Show the color of someone's eyes, with a label. (Doesn't display the label if they haven't set the description of their eye color.)</p>

<h3>[rp:agecolor][rp:age][nocolor]</h3>

<p> Show someone's age, with a color based on your own age. (You need to have your age set to a number for this to work.)</p>

<h3>[rp:statuscolor][rp:ooc][rp:npc][nocolor] [rp:curr] ([rp:oocinfo])</h3>

<p> Show someone's status, what they're currently doing, and what their OOC info is.</p>

<h3>[rp:gendercolor][rp:gender] [rp:hilite][rp:race] [rp:color][rp:class][nocolor]</h3>

<p> Show someone's gender, colored by gender; race, hilighted; and class, colored by their custom color.</p>

<h3>[rp:profilesizecolor][rp:profilesize-label][nocolor]</h3>

<p> Show the size of someone's RP profile, with a color determined by that size. (Green for smaller, red for larger.)</p>

<h3>[rp:style-yes-label][br][rp:style-ask-label][br][rp:style-no-label]</h3>

<p> List someone's roleplaying style preferences.</p>

<h3>[rp:color][rp:friendcolor][rp:guildcolor][rp:name][nocolor]</h3>

<p> Show someone's name. If they're in your guild, they'll be in green. If they're a friend, they'll be blue or green.
Otherwise, they'll be their own custom color.</p>

<h3>[rp:server-star][rp:name][rp:server-dash][rp:server-notmine]</h3>

<p>Show someone's name, and if they're not on your server, preface that with an asterisk and follow it with their server name.</p>

<h3>[rp:target-icon] [rp:target-color][rp:target] [rp:target-statuscolor][rp:target-status]</h3>

<p>Show whom someone is targeting.</p>
]==========================================================================];

L["HTML_LABELS"] = 
[==========================================================================[
<h1>Tag Labels</h1>

<p>Most tags can autogenerate their own labels. If a tag's contents are empty, the label won't appear.</p>

<p>To use a label, simply add -label to the tag.</p>

<p>For example, to add a label to rp:eyes, write:</p>

<h3> &nbsp; &nbsp; [rp:eyes-label]</h3>
]==========================================================================];

L["HTML_DEBUGGING_COMMANDS"] = 
[==========================================================================[
<h1>Debugging Commands</h1>

<p>Please |cffdd0000be very careful|r if using these commands; in general, you shouldn't need to execute them
unless instructed to by Oraibi. Some may erase your data.</p>

<h3>/rptags version</h3>
<p>Lists the version of RPTAGS, plus the versions of associated programs. |cff00dd00Safe.|r</p>

<h3>/dump RP|cff000000|rTAGS.cache.state</h3>
<p>If the previous command doesn't work, this will give the same information, albeit in a less readable form. |cff00dd00Safe.|r</p>

<h3>/dump RP|cff000000|rTAGS.cache.startLog</h3>
<p>This will list each file in RPTAGS that loaded successfully, in order. If the last entry is 'Startup routines finished.', then 
everything loaded okay. |cff00dd00Safe.|r</p>

<h3>/script RP_TagsDB.settings = nil</h3>
<p>Reset all your RPTAGS settings back to their defaults. |cffdd0000Caution.|r This is like doing a factory reset on your phone, but for RPTAGS.
You will need to use the [[/reload]] command to restart your WoW UI.</p>

<h3>/script RP_TagsDB.TRP3_Config_Imported = nil</h3>
<p>This tells RPTAGS to try to re-import the RPTAGS settings previously stored in Total RP 3's config system. |cffdd0000Caution.|r This could overwrite
some of your current RPTAGS settings.
You will need to use the [[/reload]] command to restart your WoW UI.</p>
]==========================================================================];

L["HTML_CHANGES"] = 
[==========================================================================[

<h1>Changes</h1>

<h2>0.960</h2>

<p>Updated for WoW 8.2.<br />
Fixed bug.</p>

<h2>0.952</h2>

<p>Fixed several bugs</p>

<h2>0.951</h2>

<p>Added keybindings for RPTAGS help, RPTAGS options.<br />
Added keybinding for [[Open Mouseover Profile]] in both MRP and TRP3.<br />
Fixed a bug preventing the importation of RPTAGS options previously saved in Total RP 3's config system.</p>

<h2>0.950</h2>

<p>Fixed some bugs since the previous verison;<br />
Re-added the reference menu in Options<br />
Something else that slips my mind.</p>

<h2>0.940 beta 10</h2>

<p>Bug fixes;<br />
Added more granular control over hiding rp:UnitFrames;<br />
Styling of rp:UnitFrames status bar.</p>

<h2>0.940 beta 8</h2>

<p>Bug fixes for MyRolePlay support, <br />
removed TargetTarget frame, <br />
added [rp:target] tags.</p>

<h2>0.940 beta 6</h2>

<p>Improved support for running alongside mrp, including glances.</p>

<h2>0.940 beta 2</h2>

<p>Some relatively major changes since the last major release:</p>

<p>New options system integrated with the WoW Interface -> AddOns menu. <br />
Improved context menu on rp:UnitFrames. <br />
Toggle rp:UnitFrames off and on without having to restart WoW. <br />
Individual scaling for rp:UnitFrames. <br />
Key bindings to toggle rp:UF, lock/unlock frames, hide in combat, open the tag editor, and go IC/OOC with supported clients. <br />
Limited -- very limited -- support for using rp:tags with MyRolePlay. (Integration not completed so you should consider that an alpha.) <br />
Minor bug fixes.</p>

<h2>0.937</h2>

<p>Bug fixes. So many bug fixes. askdjfalshglaksdjfkasjfkadfh</p>

<h2>0.936</h2>

<p>Fixed a bug. Don't use 0.935.</p>

<h2>0.934</h2>

<p>Changed how rp:UnitFrames handle unknown tags. Instead of just crashing, it will now mark unknown tags with internal [err] [/err] tags displayed in
red text in rp:UnitFrames.<br />
Minor fix to the tag editor: if an error is detected, the editbox will now highlight (select) the first unknown tag.<br />
Removed non-functioning line-wrapping code intended for ElvUI use.<br />
Made trp3 an "optional" dependency in preparation for mrp integration.<br />
</p>

<h2>0.933</h2>

<p>Fixed:</p>

<p>[rp:guild] tags, they weren't working right before.</p>

<p>Added:</p>

<p>Option to hide rp:UnitFrames in combat, accessible via context menu or trp3 config screens. Also hides in vehicles, pet battles, when dead. <br />
[rp:guildstatuscolor], uses your "IC"/"OOC"/"NPC"/"Unknown" colors based on whether the unit's guild membership is IC or not. <br />
[rp:actor] (or [rp:actress], same tag), defaults to [rp:faceclaim] or [rp:voiceclaim] if actor isn't set. <br />
[rp:bodyclaim], works like [rp:faceclaim] and [rp:voiceclaim]. </p>


<h2>0.932</h2>

<p>Changed the way you move rp:UnitFrames around on the screen. (Including clamping to them to screen so you can't accidentally drag them away.)</p>

<p> Use the context menu or the trp3 config screen to unlock frames. A drag tab appears. <br />
Drag the drag tab around to the desired location. <br />
Click the lock to lock all frames in place, or click the reset button to restore frames to their default locations. <br />
The latter will re-attach focus and targettarget to player and target frames respectively.</p>

<h2>0.931</h2>

<p>Most of the improvements are to rp:UnitFrames.</p>

<p>Added configurable tooltips that can take rp:tags for the various parts of a unit frame.<br />
Added two new layouts, Portrait (which is loosely modeled after WoW's "paperdoll" window) and Thumbnail.<br />
Added context menus accessible via right-click for direct editing of panel and tooltip tags, plus changing the layout.<br />
Added rp:nick-quoted tag.<br />
Various bug fixes.</p>

<h2>0.925</h2>

<p>Adds the ability to run rp:UnitFrames alongside ElvUI unit frames. This is known as "parallel mode".</p>

<p>rp:tags now runs in three modes:</p>

<p>"standalone", using rp:UF to display tags; <br />
"elvui", using ElvUI to display tags; <br />
"parallel", with both rp:UF and ElvUI displaying tags</p>

<h2>0.920</h2>

<p>Improvements to the tag editor.</p>

<p>New tags include [rp:style], [rp:client], [rp:server], [rp:friendcolor], [rp:guildcolor], [rp:partycolor], [rp:guild], and more.</p>

<p>You can now change the colors of the rp:UF frames.</p>

<p>Some other random cool stuff.</p>

<h2>0.901</h2>

<p>Added standalone mode that operates without requiring ElvUI. <br />
Added reference for tags in configuration settings for totalRP3. <br />
Added several miscellaneous tags such as [rp:relation], [rp:relationcolor], and [rp:relationicon]. <br />
Updated [rp:rstatus] to work with trp3's new relation status field. <br />
Minor bug fixes.</p>

<h2>0.850</h2>

<p>Updated for 8.1, changed a little about how wrapping and field size for glances work.</p>

<h2>Older Versions</h2>

<p>For versions of RPTAGS prior to WoW 8.1, please see the <a href="https://wow.curseforge.com/projects/rp-tags/files">CurseForge</a>.</p>

]==========================================================================];

L["HTML_CREDITS"] = 
[==========================================================================[
<h1>Credits</h1>

<p>RPTAGS was created by |cffbb00bbOraibi|r of the Moon Guard server.</p>

<p>Libraries used to create RPTAGS and RPUF include <a href="https://github.com/oUF-wow/oUF">oUF</a> by Trond A Esketh, Val Voronov, Adrian L Lange, and Rainrider;
<a href="https://www.wowace.com/projects/libstub">LibStub</a> by Kaelten, Cladhaire, ccknight, Mikk, Ammo, Nevcairiel, and johsborke;
<a href="https://wow.curseforge.com/projects/librealminfo">LibRealmInfo</a> by Phanx; and
<a href="https://www.wowace.com/projects/libsharedmedia-3-0">LibSharedMedia</a> by Elkano.</p>

<p>The tag editor uses the <a href="https://fonts.google.com/specimen/Source+Code+Pro">Source Code Pro</a> font by Paul D. Hunt for Adobe Systems.</p>

<p><a href="http:trp3">Total RP 3</a> created by Renaud "Ellypse" Parize, Sylvain "Telkostrasz" Cossement, Solanya, Connor "Saelorable" MacLeod, Daniel "Meorawr" Yates.</p>

<p><a href="http:trp3">MyRolePlay</a> created by Katorie, Myoukochou, TheTrenchRat.</p>

<p><a href="http:xrp">XRP</a> created by borblasthammer2.</p>

<p><a href="http:elvui">ElvUI</a> created by Blazeflack, Haste, Hydrazine, Nightcracker, Omega1970, Tukz, Azilroka, Simpy, and Merathilis.</p>
]==========================================================================];

-- help files, in markdown  -------------------------------------------------------------------------------------------------------------------------------------
L["INTRO_MD"] = 
[==========================================================================[
# Introduction

RPTAGS is an addon that lets you create special panels, called unit frames, to display roleplaying information of your
choice, drawn from roleplaying addons such as [MyRolePlay](http:mrp), [Total RP 3](http:trp3), or [XRP](http:xrp).

In addition, you can use any tags from RPTAGS in [ElvUI](http:elvui), although ElvUI is not required for RPTAGS.

## What's a Unit Frame?

A unit frame is a window on your screen that appears when a certain type of unit exists in the
game. For example, the Target Unit Frame is shown when you target someone.

RPTAGS works with three types of unit frame: Player, Target, and Focus. When we talk about showing
a unit's info, that means that your RP info is displayed in the player frame, your target's in the target frame,
and your focus, if any, in the focus frame.

## What's a Tag?

A tag, in this context, refers to a string of text that you asisgn to locations on the unit frames known
as panels. Tags look like this:

### &nbsp; [rp:tagname]

There are nearly 200 RPTAGS you can use, as well as several dozen provided by oUF, the framework addon upon
which RPTAGS is built. Some of the most useful tags include:

### &nbsp; [rp:name], [rp:race], [rp:class], [rp:icon], [rp:color], [rp:status], [rp:curr]

## What are Panels?

There are two types of panels: panels for text tags, and panels for icons. The text panels are Name Panel, Info Panel,
Details Panel, and Status Bar. The icon panels are numbered from one to six.

You can customize what is shown in each panel; in addition, you can also set the tooltips for when you move your
mouse over that part of the unit frame.

## What's a Layout?

There are five layouts provided by RPTAGS. Standard Layout shows all six icons, the name panel, info panel, and
status bar. The Compact Layout only shows the first icon, name panel, and info panel. The Detailed Layout
displays an animated 3-D portrait, all six icons, name panel, info panel, status bar, and a large space for the details
panel. Portrait Layout is modeled after Blizzard's "paper doll" character screen and features a larger portrait,
the name panel, the info panel, and all six icon slots. The Thumbnail Layout shows a small portrait, the name
panel, and a single icon.

You can set each panel to a different layout if you wish.

## Getting Started

By default, RPTAGS begins with a set of predefined tags, but you can change those to whatever you wish. For example,
the default tag found in the Name Panel is [rp:color][rp:name]. The first tag, [rp:color], changes the
color of the following text to the the unit's personal color or custom class color. Then the second tag inserts the
roleplaying name of the character.

You can edit the content of a panel by right-clicking on that part of the frame, or by using the RPTAGS options
panels. Your changes will immediately be reflected in the player frame, and also in whoever you target or focus on.

## Further Help

If you need more assistance, you can peruse the rest of these help topics or ask for assistance on the
[RPTAGS discord](http:discord) or ask [Oraibi on twitter](http:twitter).
The easiest way to learn is to just start editing tags and experimenting. Have fun!

]==========================================================================];

L["OPTIONS_MD"] = 
[==========================================================================[
# Options

All settings are available through the RPTAGS options system.

<a href="rpconfig:general">General Settings</a> let you determine what messages to show, how to display certain tags, and how to respond
to notes that you've set on a unit. 

<a href="rpconfig:colors">Colors Settings</a> let you change the various colors used by RPTAGS.

You can use the <a href="rpconfig:rpuf">rp:UnitFrames Settings</a> control when and where RPUF will be shown.

You can adjust the layout of RPUF in the <a href="rpconfig:layout">rp:UnitFrames Layout Settings</a>.

To set the tags in each panel and icon slot, as well as tooltips for the same, use the
<a href="rpconfig:tags">rp:UnitFrames Panels Settings</a>.

If you want to restore the settings on a particular page to their default values, use the "Defaults" button in the lower left corner of the Interface window.
]==========================================================================];

L["BINDINGS_MD"] = 
[==========================================================================[
# Key Bindings

RPTAGS offers a number of keybinds to allow you to control the addon with a single keypress.

Key bindings are accessible through the standard <a href="rpconfig:keybind">WoW Key Bindings Menu</a>, on the AddOns sub-menu.
]==========================================================================];

L["RECIPES_MD"] = 
[==========================================================================[
# Recipes

These "recipes" display how to do common uses of RPTAGS.

### &nbsp; [rp:color][rp:title] [rp:name], [rp:title-long][nocolor]

 Show someone's short title, name, and long title.

### &nbsp; [rp:eyecolor][rp:eyes-label][nocolor]

 Show the color of someone's eyes, with a label. (Doesn't display the label if they haven't set the description of their eye color.)

### &nbsp; [rp:agecolor][rp:age][nocolor]

 Show someone's age, with a color based on your own age. (You need to have your age set to a number for this to work.)

### &nbsp; [rp:statuscolor][rp:ooc][rp:npc][nocolor] [rp:curr] ([rp:oocinfo])

 Show someone's status, what they're currently doing, and what their OOC info is.

### &nbsp; [rp:gendercolor][rp:gender] [rp:hilite][rp:race] [rp:color][rp:class][nocolor]

 Show someone's gender, colored by gender; race, hilighted; and class, colored by their custom color.

### &nbsp; [rp:profilesizecolor][rp:profilesize-label][nocolor]

 Show the size of someone's RP profile, with a color determined by that size. (Green for smaller, red for larger.)

### &nbsp; [rp:style-yes-label][br][rp:style-ask-label][br][rp:style-no-label]

 List someone's roleplaying style preferences.

### &nbsp; [rp:color][rp:friendcolor][rp:guildcolor][rp:name][nocolor]

 Show someone's name. If they're in your guild, they'll be in green. If they're a friend, they'll be blue or green.
Otherwise, they'll be their own custom color.

### &nbsp; [rp:server-star][rp:name][rp:server-dash][rp:server-notmine]

Show someone's name, and if they're not on your server, preface that with an asterisk and follow it with their server name.

### &nbsp; [rp:target-icon] [rp:target-color][rp:target] [rp:target-statuscolor][rp:target-status]

Show whom someone is targeting.
]==========================================================================];

L["LABELS_MD"] = 
[==========================================================================[
# Tag Labels

Most tags can autogenerate their own labels. If a tag's contents are empty, the label won't appear.

To use a label, simply add -label to the tag.

For example, to add a label to rp:eyes, write:

### &nbsp; &nbsp; [rp:eyes-label]
]==========================================================================];

L["DEBUGGING_COMMANDS_MD"] = 
[==========================================================================[
# Debugging Commands

Please |cffdd0000be very careful|r if using these commands; in general, you shouldn't need to execute them
unless instructed to by Oraibi. Some may erase your data.

### &nbsp; /rptags version
Lists the version of RPTAGS, plus the versions of associated programs. |cff00dd00Safe.|r

### &nbsp; /dump RP|cff000000|rTAGS.cache.state
If the previous command doesn't work, this will give the same information, albeit in a less readable form. |cff00dd00Safe.|r

### &nbsp; /dump RP|cff000000|rTAGS.cache.startLog
This will list each file in RPTAGS that loaded successfully, in order. If the last entry is 'Startup routines finished.', then 
everything loaded okay. |cff00dd00Safe.|r

### &nbsp; /script RP_TagsDB.settings = nil
Reset all your RPTAGS settings back to their defaults. |cffdd0000Caution.|r This is like doing a factory reset on your phone, but for RPTAGS.
You will need to use the [[/reload]] command to restart your WoW UI.

### &nbsp; /script RP_TagsDB.TRP3_Config_Imported = nil
This tells RPTAGS to try to re-import the RPTAGS settings previously stored in Total RP 3's config system. |cffdd0000Caution.|r This could overwrite
some of your current RPTAGS settings.
You will need to use the [[/reload]] command to restart your WoW UI.
]==========================================================================];

L["CHANGES_MD"] = 
[==========================================================================[

# Changes

## 0.960

Updated for WoW 8.2.
Fixed bug.

## 0.952

Fixed several bugs

## 0.951

Added keybindings for RPTAGS help, RPTAGS options.
Added keybinding for [[Open Mouseover Profile]] in both MRP and TRP3.
Fixed a bug preventing the importation of RPTAGS options previously saved in Total RP 3's config system.

## 0.950

Fixed some bugs since the previous verison;
Re-added the reference menu in Options
Something else that slips my mind.

## 0.940 beta 10

Bug fixes;
Added more granular control over hiding rp:UnitFrames;
Styling of rp:UnitFrames status bar.

## 0.940 beta 8

Bug fixes for MyRolePlay support, 
removed TargetTarget frame, 
added [rp:target] tags.

## 0.940 beta 6

Improved support for running alongside mrp, including glances.

## 0.940 beta 2

Some relatively major changes since the last major release:

New options system integrated with the WoW Interface -> AddOns menu. 
Improved context menu on rp:UnitFrames. 
Toggle rp:UnitFrames off and on without having to restart WoW. 
Individual scaling for rp:UnitFrames. 
Key bindings to toggle rp:UF, lock/unlock frames, hide in combat, open the tag editor, and go IC/OOC with supported clients. 
Limited -- very limited -- support for using rp:tags with MyRolePlay. (Integration not completed so you should consider that an alpha.) 
Minor bug fixes.

## 0.937

Bug fixes. So many bug fixes. askdjfalshglaksdjfkasjfkadfh

## 0.936

Fixed a bug. Don't use 0.935.

## 0.934

Changed how rp:UnitFrames handle unknown tags. Instead of just crashing, it will now mark unknown tags with internal [err] [/err] tags displayed in
red text in rp:UnitFrames.
Minor fix to the tag editor: if an error is detected, the editbox will now highlight (select) the first unknown tag.
Removed non-functioning line-wrapping code intended for ElvUI use.
Made trp3 an "optional" dependency in preparation for mrp integration.


## 0.933

Fixed:

[rp:guild] tags, they weren't working right before.

Added:

Option to hide rp:UnitFrames in combat, accessible via context menu or trp3 config screens. Also hides in vehicles, pet battles, when dead. 
[rp:guildstatuscolor], uses your "IC"/"OOC"/"NPC"/"Unknown" colors based on whether the unit's guild membership is IC or not. 
[rp:actor] (or [rp:actress], same tag), defaults to [rp:faceclaim] or [rp:voiceclaim] if actor isn't set. 
[rp:bodyclaim], works like [rp:faceclaim] and [rp:voiceclaim]. 


## 0.932

Changed the way you move rp:UnitFrames around on the screen. (Including clamping to them to screen so you can't accidentally drag them away.)

 Use the context menu or the trp3 config screen to unlock frames. A drag tab appears. 
Drag the drag tab around to the desired location. 
Click the lock to lock all frames in place, or click the reset button to restore frames to their default locations. 
The latter will re-attach focus and targettarget to player and target frames respectively.

## 0.931

Most of the improvements are to rp:UnitFrames.

Added configurable tooltips that can take rp:tags for the various parts of a unit frame.
Added two new layouts, Portrait (which is loosely modeled after WoW's "paperdoll" window) and Thumbnail.
Added context menus accessible via right-click for direct editing of panel and tooltip tags, plus changing the layout.
Added rp:nick-quoted tag.
Various bug fixes.

## 0.925

Adds the ability to run rp:UnitFrames alongside ElvUI unit frames. This is known as "parallel mode".

rp:tags now runs in three modes:

"standalone", using rp:UF to display tags; 
"elvui", using ElvUI to display tags; 
"parallel", with both rp:UF and ElvUI displaying tags

## 0.920

Improvements to the tag editor.

New tags include [rp:style], [rp:client], [rp:server], [rp:friendcolor], [rp:guildcolor], [rp:partycolor], [rp:guild], and more.

You can now change the colors of the rp:UF frames.

Some other random cool stuff.

## 0.901

Added standalone mode that operates without requiring ElvUI. 
Added reference for tags in configuration settings for totalRP3. 
Added several miscellaneous tags such as [rp:relation], [rp:relationcolor], and [rp:relationicon]. 
Updated [rp:rstatus] to work with trp3's new relation status field. 
Minor bug fixes.

## 0.850

Updated for 8.1, changed a little about how wrapping and field size for glances work.

## Older Versions

For versions of RPTAGS prior to WoW 8.1, please see CurseForge.

]==========================================================================];

L["CREDITS_MD"] = 
[==========================================================================[
# Credits

RPTAGS was created by |cffbb00bbOraibi|r of the Moon Guard server.
[Email Oraibi](mailto:kivaoraibi@gmail.com)

Libraries used to create RPTAGS and RPUF include oUF by Trond A Esketh, Val Voronov, Adrian L Lange, and Rainrider;
LibStub by Kaelten, Cladhaire, ccknight, Mikk, Ammo, Nevcairiel, and johsborke;
LibRealmInfo by Phanx; and
LibSharedMedia by Elkano.

The tag editor uses the Source Code Pro font by Paul D. Hunt for Adobe Systems.

[Total RP 3](http:trp3) created by Renaud "Ellypse" Parize, Sylvain "Telkostrasz" Cossement, Solanya, Connor "Saelorable" MacLeod, Daniel "Meorawr" Yates.

[MyRolePlay](http:trp3) created by Katorie, Myoukochou, TheTrenchRat.

[XRP](http:xrp) created by borblasthammer2.

[ElvUI](http:elvui) created by Blazeflack, Haste, Hydrazine, Nightcracker, Omega1970, Tukz, Azilroka, Simpy, and Merathilis.
]==========================================================================];
L["TAG_REFERENCE_MD"] = 
[==========================================================================[
# Tag Reference

The categories of tags are:
]==========================================================================];

local ModL = RPTAGS.modules:GetLocale("enUS");

for k, v in pairs(ModL)
do  L[k] = v;
end;

end);