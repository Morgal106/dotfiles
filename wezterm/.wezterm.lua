-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- 设置字体
config.font = wezterm.font_with_fallback({
	-- "FiraCode NF",
	-- "JetbrainsMono NF",
	"Sarasa Term SC Nerd",
})

-- 设置字体大小
config.font_size = 11

-- 设置配色方案
config.color_scheme = "Gruvbox dark, pale (base16)"
-- config.color_scheme = "Dracula"

-- 配置tab栏
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = false

-- 设置窗口透明度
config.window_background_opacity = 1.0

-- 设置默认启动程序
-- config.default_prog = { "pwsh", "-nologo" }
config.default_prog = { "nu" }

-- 设置窗口边距
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- 设置动画帧率上限
config.animation_fps = 60

-- 设置启动时窗口大小
config.initial_cols = 130
config.initial_rows = 38

-- and finally, return the configuration to wezterm
return config
