return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			-- 1. Setup Git preference (Must be done BEFORE setup)
			require("nvim-treesitter.install").prefer_git = true

			-- 2. Setup the configuration
			-- We wrap this in a pcall or check to prevent startup crashes if something goes wrong
			local status_ok, configs = pcall(require, "nvim-treesitter.configs")
			if not status_ok then
				return
			end

			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"python",
					"markdown",
					"markdown_inline",
					"javascript",
					"typescript",
					"html",
					"css",
					"bash",
					"java",
				},
				sync_install = false,
				auto_install = true,

				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
					additional_vim_regex_highlighting = false,
				},

				indent = { enable = true },
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesitter-context").setup({
				enable = true,
				mode = "cursor",
				max_lines = 0,
				separator = "—",
				on_attach = function(buf)
					return true
				end,
			})
		end,
	},
}
