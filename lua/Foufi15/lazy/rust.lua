return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.g.rustaceanvim = {
				server = {
					capabilities = capabilities,
					default_settings = {
						["rust-analyzer"] = {
							-- AJOUT ICI : Permet de faire fonctionner le LSP sur les fichiers isolés (.rs)
							linkedProjects = {},
							detachedFiles = {
								vim.api.nvim_buf_get_name(0),
							},
							cargo = {
								allFeatures = true,
							},
							checkOnSave = {
								command = "clippy",
							},
						},
					},
					on_attach = function(client, bufnr)
						local opts = { buffer = bufnr, silent = true }
						vim.keymap.set("n", "K", "<cmd>RustLsp hover actions<CR>", opts)
						vim.keymap.set("n", "<leader>ca", "<cmd>RustLsp codeAction<CR>", opts)
					end,
				},
			}
		end,
	},
}
