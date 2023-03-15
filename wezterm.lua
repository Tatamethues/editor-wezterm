local wezterm = require 'wezterm'
local domains = require "domains"

local act = wezterm.action
return {
    ------------
    --  Base  --
    ------------
    font_size = 14.0,
    color_scheme = 'Catppuccin Mocha',
    ------------
    -- window --
    ------------
    window_padding = { left = 3, right = 3, top = 3, bottom = 3 },
    tab_bar_at_bottom = true,
    wsl_domains = domains.wsl_domains,
    ssh_domains = domains.ssh_domains,
    ------------------
    -- Key Maps --
    ------------------
    -- disable_default_key_bindings = true,
    leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
    default_domain = 'WSL:Ubuntu-22.04',
    keys = {
        ----------
        -- tab
        ----------
        { key = 't', mods = 'LEADER',     action = act.SpawnTab 'CurrentPaneDomain' },
        {
            key = 'w',
            mods = 'LEADER|CTRL',
            action = act.CloseCurrentTab { confirm = true }
        }, { key = '1', mods = 'ALT', action = act.ActivateTab(0) },
        { key = '2', mods = 'ALT',        action = act.ActivateTab(1) },
        { key = '3', mods = 'ALT',        action = act.ActivateTab(2) },
        { key = '4', mods = 'ALT',        action = act.ActivateTab(3) },
        { key = '5', mods = 'ALT',        action = act.ActivateTab(4) },
        { key = '6', mods = 'ALT',        action = act.ActivateTab(5) },
        { key = '7', mods = 'ALT',        action = act.ActivateTab(6) },
        { key = '8', mods = 'ALT',        action = act.ActivateTab(7) },
        { key = '9', mods = 'ALT',        action = act.ActivateTab(8) },
        { key = 'p', mods = 'CTRL|SHIFT', action = act.ActivateCommandPalette },
        ----------
        -- pane
        ----------
        {
            key = 'p',
            mods = 'ALT',
            action = act.PaneSelect { alphabet = '1234567890' }
        }, {
        key = '\\',
        mods = 'ALT',
        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
    }, {
        key = '-',
        mods = 'ALT',
        action = act.SplitVertical { domain = 'CurrentPaneDomain' }
    },
        {
            key = 'q',
            mods = 'ALT',
            action = act.CloseCurrentPane { confirm = true }
        },
        {
            key = "h",
            mods = "ALT",
            action = act({ ActivatePaneDirection = "Left" })
        },
        {
            key = "l",
            mods = "ALT",
            action = act({ ActivatePaneDirection = "Right" })
        },
        { key = "k", mods = "ALT",        action = act({ ActivatePaneDirection = "Up" }) },
        {
            key = "j",
            mods = "ALT",
            action = act({ ActivatePaneDirection = "Down" })
        }, {
        key = "h",
        mods = "CTRL|ALT|SHIFT",
        action = act({ AdjustPaneSize = { "Left", 2 } })
    }, {
        key = "l",
        mods = "CTRL|ALT|SHIFT",
        action = act({ AdjustPaneSize = { "Right", 2 } })
    }, {
        key = "k",
        mods = "CTRL|ALT|SHIFT",
        action = act({ AdjustPaneSize = { "Up", 2 } })
    }, {
        key = "j",
        mods = "CTRL|ALT|SHIFT",
        action = act({ AdjustPaneSize = { "Down", 2 } })
    }, ----------
        -- clipboard
        ----------
        { key = "c", mods = "CTRL|SHIFT", action = act({ CopyTo = "Clipboard" }) },
        {
            key = "v",
            mods = "CTRL|SHIFT",
            action = act({ PasteFrom = "Clipboard" })
        }
    }
}
