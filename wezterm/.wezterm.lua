-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

BACKGROUND = "/Users/rlgranlund/background.png"
BLACK_BACKGROUND = "/Users/rlgranlund/Solid_black.png"
TESTIMG = "/Users/rlgranlund/Empty.png"

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'nordfox'

config.font = wezterm.font('NotoSansM Nerd Font', {weight = 'Regular'})
config.font_size = 14
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = nil
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

config.inactive_pane_hsb = {
   saturation = 0.9,
   brightness = 0.8
}

function handleBackgroundImage(window)
   local window_dims = window:get_dimensions()
   local overrides = window:get_config_overrides() or {}

   if not window_dims.is_full_screen then
      if not overrides.window_background_image then
         return
      end
      overrides.window_background_image = nil
      overrides.window_decorations = "TITLE | RESIZE"
      overrides.window_background_opacity = 0.8
   else
      overrides.window_background_image = BACKGROUND
      overrides.window_decorations = "RESIZE"
      overrides.window_background_opacity = 0.4
   end
   if overrides.window_background_image
      and overrides.window_background_image == config.window_backgroundImage then
      return
   else
      window:set_config_overrides(overrides)
   end
end

wezterm.on('window-resized', function(window, pane)
   handleBackgroundImage(window)
end)

wezterm.on('window-config-reloaded', function(window)
   handleBackgroundImage(window)
end)

return config
