local wezterm = require 'wezterm'

local M = {

}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(M, {
        label = 'PowerShell',
        args = { 'powershell.exe', '-NoLogo' },
    })
end

return M