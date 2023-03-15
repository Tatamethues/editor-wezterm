local M = {}

M.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		-- default_cwd = '/home/colin',
		default_cwd = "~",
		-- default_prog = {"zsh"}
	},
}
M.ssh_domains = {
	{
		-- This name identifies the domain
		name = "SSH:Fedora-Dev",
		-- The hostname or address to connect to. Will be used to match settings
		-- from your ssh config file
		remote_address = "192.168.1.12",
		-- The username to use on the remote host
		username = "colinshen",
	},
	{
		-- This name identifies the domain
		name = "SSH:Rocky",
		-- The hostname or address to connect to. Will be used to match settings
		-- from your ssh config file
		remote_address = "192.168.1.11",
		-- The username to use on the remote host
		username = "ss",
	},
}
return M
