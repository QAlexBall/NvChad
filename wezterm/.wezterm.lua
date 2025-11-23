-- Pull in the wezterm API
local wezterm = require 'wezterm'
local helpers = require 'helpers'

-- Initialize backdrops (keeping your existing logic)
require('utils.backdrops'):set_files():random()

wezterm.log_info("==> Start Wezterm config_dir", wezterm.config_dir)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- 1. Apply the base configuration from helpers FIRST.
--    (This likely sets window_decorations to just "RESIZE", which we want to override)
helpers.apply_to_config(config)

-- 2. Apply your specific overrides AFTER the helper.
--    "INTEGRATED_BUTTONS" restores the macOS traffic lights (Red/Yellow/Green)
--    "RESIZE" ensures the window is still resizable
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = { left = 10, right = 10, top = 10, bottom = 0 }
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30

-- and finally, return the configuration to wezterm
return config
