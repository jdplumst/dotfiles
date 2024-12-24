-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "catppuccin-mocha"
--config.color_scheme = "Tokyo Night"

-- Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 17.0

-- Spawn a bash shell in login mode
-- config.default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-l' }
-- config.default_domain = "WSL:Ubuntu"

local mux = wezterm.mux

-- Set fullscreen on startup
wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- making window titles more distinct
-- wezterm.on("format-window-title", function()
-- 	local title = "[" .. wezterm.mux.get_active_workspace() .. "]"
-- 	title = title .. " " .. wezterm.mux.get_domain():name()
-- 	title = title .. " - $W"
-- 	-- some logic here
-- 	return title
-- end)

config.keys = {
	{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
}

config.automatically_reload_config = true

-- Hide title
-- config.window_decorations = "RESIZE"

-- Hide tabs
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- config.background = {
-- {
-- 	source = {
-- 		File = "C:\\Users\\jerem\\OneDrive\\Pictures\\windows-11-dark-mode-blue-stock-official.jpg",
-- 	},
-- 	hsb = {
-- 		hue = 1.0,
-- 		saturation = 1.02,
-- 		brightness = 0.25,
-- 	},
-- 	width = "100%",
-- 	height = "100%",
-- },
-- 	{
-- 		source = {
-- 			Color = "#282c35",
-- 		},
-- 		width = "100%",
-- 		height = "100%",
-- 		opacity = 0.55,
-- 	},
-- }

-- -- and finally, return the configuration to wezterm
return config
