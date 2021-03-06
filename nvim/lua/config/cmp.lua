local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = {
		["<Esc>"] = cmp.mapping.abort(),
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
	formatting = {
		format = lspkind.cmp_format(),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip", max_item_count = 10 },
		{ name = "path" },
		{ name = "buffer", max_item_count = 5 },
	},
})
