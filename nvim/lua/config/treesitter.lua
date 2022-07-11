require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"rust",
		"toml",
		"typescript",
		"go",
		"c",
		"cpp",
		"c_sharp",
		"vue",
		"tsx",
		"css",
		"scss",
		"lua",
		"html",
		"fish",
	},
	highlight = {
		enable = true,
	},
	autopairs = { enable = true },
	indent = { enable = true },
	context_commentstring = { enable = true },
})