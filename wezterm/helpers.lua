-- I am helpers.lua and I should live in ~/.config/wezterm/helpers.lua

local wezterm = require "wezterm"

-- This is the module table that we will export
local module = {}

-- This function is private to this module and is not visible
-- outside.
local function private_helper()
  wezterm.log_error "test log error"
end

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:
function module.apply_to_config(config)
  private_helper()

  -- config.color_scheme = "Catppuccin Mocha"
  config.font_size = 15.0
  -- config.window_decorations = "NONE"
  config.initial_cols = 120
  config.initial_rows = 32
  local image_path = ".config/nvim/wezterm/backdrops/voyage.jpg"
  config.window_background_image = wezterm.config_dir .. "/" .. image_path
  wezterm.log_info(config.window_background_image)
  config.window_background_image_hsb = {
    brightness = 0.1,
    hue = 1.0,
    saturation = 1.0,
  }
  config.window_background_opacity = 0.99
  -- config.window_background_gradient = {
  --   colors = { "#339966", "#990099" },
  --   -- Specifices a Linear gradient starting in the top left corner.
  --   orientation = { Linear = { angle = -45.0 } },
  -- }
end

-- return our module table
return module
