local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.hyperlink_rules = wezterm.default_hyperlink_rules()
table.insert(config.hyperlink_rules, {
	regex = "/[^\\s]+",
	format = "file://$0",
})

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 22
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
})
config.color_scheme = "Modus-Vivendi"
config.window_frame = {
	font_size = 14,
}
config.window_padding = {
	bottom = 40,
}

config.keys = {
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

return config
