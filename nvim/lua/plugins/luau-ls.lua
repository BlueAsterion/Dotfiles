return {
	"lopi-py/luau-lsp.nvim",

	config = function()
		require("luau-lsp").setup({
			plugin = {
				enabled = true,
				port = 3667,
			},
			platform = {
				type = "roblox",
			},
			types = {
				roblox_security_level = "PluginSecurity",
			},

			sourcemap = {
				enabled = true,
				autogenerate = true,
				rojo_project_file = "default.project.json",
				sourcemap_file = "sourcemap.json",
			},

			fflags = {
				enable_new_solver = true, -- enables the fflags required for luau's new type solver
				sync = true,      -- sync currently enabled fflags with roblox's published fflags
				override = {      -- override fflags passed to luau
					LuauTableTypeMaximumStringifierLength = "100",
				},
			},
		})
	end,
}
