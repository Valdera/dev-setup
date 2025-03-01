local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.use_dead_keys = false
config.scrollback_lines = 5000

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.color_scheme = 'Tokyo Night'

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = { left = 20, right = 20, top = 55, bottom = 15 }

config.window_background_opacity = 0.8
config.macos_window_background_blur = 30

return config
