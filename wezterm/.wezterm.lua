--
-- Pull in the wezterm API
local wezterm = require 'wezterm'
local helpers = require 'helpers'

require('utils.backdrops'):set_files():random()

wezterm.log_info("==> Start Wezterm config_dir", wezterm.config_dir)
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
helpers.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config
