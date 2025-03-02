-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.enable_tab_bar = false

config.window_decorations = "NONE"

config.font_size = 12.5

config.window_padding = {}
config.window_padding.left = 0
config.window_padding.right = 0
config.window_padding.top = 0
config.window_padding.bottom = 0

config.max_fps = 120

config.color_scheme = 'Dark Pastel'

config.disable_default_key_bindings = true

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.disable_default_key_bindings = true

local act = wezterm.action
config.keys = {
  { key = "V",        mods = "CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "Copy",  mods = "NONE", action = act.CopyTo("Clipboard") },
  { key = "Paste", mods = "NONE", action = act.PasteFrom("Clipboard") },
  { key = "F11",   mods = "NONE", action = act.ToggleFullScreen },
}

-- Maximize screen on start up
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)
-- and finally, return the configuration to wezterm
return config
