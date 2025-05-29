local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- window size
config.initial_cols = 120
config.initial_rows = 28

-- font
config.font = wezterm.font 'Iosevka NF'
config.font_size = 13
config.line_height = 1.0

-- color
config.color_scheme = 'Gruvbox dark, medium (base16)'

-- tabs
config.hide_tab_bar_if_only_one_tab = true


config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '"',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

return config
