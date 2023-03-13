local M = {}

-- WSL --
M.wsl_domains = { {
    name = 'WSL:Ubuntu-22.04',
    distribution = 'Ubuntu-22.04',
    default_cwd = '/home/ss'
} }
M.ssh_domains = { {
    -- This name identifies the domain
    name = 'SSH:Fedora-Dev',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = 'home.colinshen.xyz:2022',
    -- The username to use on the remote host
    username = 'colinshen'
}, {
    -- This name identifies the domain
    name = 'SSH:Rocky',
    -- The hostname or address to connect to. Will be used to match settings
    -- from your ssh config file
    remote_address = 'home.colinshen.xyz:1022',
    -- The username to use on the remote host
    username = 'ss'
} }
return M
