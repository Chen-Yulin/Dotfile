-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "EverforestDark (Gogh)"

config.font_size = 16.0
config.enable_tab_bar = false
config.window_background_opacity = 0.85
local act = wezterm.action

-- customize mouse scroll speed but not working for touchpad
config.mouse_bindings = {
	{
		event = { Down = { streak = 3, button = { WheelUp = 1 } } },
		mods = "NONE",
		action = act.ScrollByLine(-3),
	},
	{
		event = { Down = { streak = 3, button = { WheelDown = 1 } } },
		mods = "NONE",
		action = act.ScrollByLine(3),
	},
}

-- and finally, return the configuration to wezterm
return config
