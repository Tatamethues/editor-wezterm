local wezterm = require 'wezterm'
local act = wezterm.action

local M = {}
--------------------
-- keys
--------------------
M.keys = {
    ----------
    -- tab
    ----------
    { key = 'p',  mods = 'CTRL|SHIFT', action = act.ActivateCommandPalette },
    ----------
    -- tab
    ----------
    { key = 't',  mods = 'ALT',        action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'w',  mods = 'ALT',        action = act.CloseCurrentTab { confirm = true } },
    { key = "1",  mods = "ALT",        action = act({ ActivateTab = 0 }) },
    { key = "2",  mods = "ALT",        action = act({ ActivateTab = 1 }) },
    { key = "3",  mods = "ALT",        action = act({ ActivateTab = 2 }) },
    { key = "4",  mods = "ALT",        action = act({ ActivateTab = 3 }) },
    { key = "5",  mods = "ALT",        action = act({ ActivateTab = 4 }) },
    { key = "6",  mods = "ALT",        action = act({ ActivateTab = 5 }) },
    { key = "7",  mods = "ALT",        action = act({ ActivateTab = 6 }) },
    { key = "8",  mods = "ALT",        action = act({ ActivateTab = 7 }) },
    { key = "9",  mods = "ALT",        action = act({ ActivateTab = 8 }) },
    ----------
    -- pane
    ----------
    { key = 'p',  mods = 'ALT',        action = act.PaneSelect { alphabet = '1234567890' } },
    { key = "\\", mods = 'ALT',        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = '-',  mods = 'ALT',        action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = "q",  mods = "ALT",        action = act.CloseCurrentPane { confirm = true } },
    {
        key = 'h',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Left',
    },
    {
        key = 'l',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Right',
    },
    {
        key = 'k',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Up',
    },
    {
        key = 'j',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Down',
    },
}

return M
