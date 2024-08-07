-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

--Shell
config.default_prog = {"fish"}
-- default_prog is implemented as an array where the 0th element is the command to run and the rest of the elements are passed as the positional arguments to that command.

-- Workaround for version 20240203-110809-5046fc22
config.enable_wayland = false

-- render
config.front_end = "WebGpu"
-- The WebGpu front end allows wezterm to use GPU acceleration provided by a number of platform-specific backends:
-- Metal (on macOS)
-- Vulkan
-- DirectX 12 (on Windows)

-- Looks
config.default_cursor_style = "SteadyUnderline"
config.force_reverse_video_cursor = true

config.color_scheme = "Molokai"

config.freetype_load_target = "Light"
config.font = wezterm.font("Ubuntu Mono")
config.font_size = 18.0

config.background = {
  {
    source = {
      Color="#000a05"
    },
    width = "100%",
    height = "100%",
    opacity = 0.9
  }
}

config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
