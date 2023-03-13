local keybinds = require('config.keybinds')
local domains = require('config.domains')
local wezterm = require 'wezterm'
local act = wezterm.action

return {
    ------------
    --  Base  --
    ------------
    font_size = 14.0,
    color_scheme = 'Catppuccin Mocha',
    tab_bar_at_bottom = true,
    ------------
    -- window --
    ------------
    -- window_decorations = 'RESIZE',
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    },
    ------------
    -- window --
    ------------
    default_prog = {'powershell.exe'},    

    ------------------
    -- Key Maps --
    ------------------
    -- disable_default_key_bindings = true,
    leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
    keys = keybinds.keys,
    ------------------
    -- Multiplexing --
    ------------------
    -- WSL --
    wsl_domains = domains.wsl_domains,
    ssh_domains = domains.ssh_domains
}

