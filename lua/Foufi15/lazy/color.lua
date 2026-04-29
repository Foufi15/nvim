return {
	-- 1. CATPPUCCIN (Le choix moderne)
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					mason = true,
					neotree = true, -- Il va colorer Neo-tree parfaitement
					telescope = { enabled = true },
				},
			})
			-- Décommenter la ligne ci-dessous pour activer Catppuccin
			-- vim.cmd.colorscheme "catppuccin"
		end,
	},

	-- 2. NORD (Le choix classique)
	{
		"shaunsingh/nord.nvim", -- Une version moderne de Nord pour Neovim
		priority = 1000,
		config = function()
			-- Décommenter la ligne ci-dessous pour activer Nord
			vim.cmd.colorscheme("nord")
		end,
	},
}

-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			require("catppuccin").setup({
-- 				flavour = "mocha", -- "mocha" est la version sombre la plus vibrante
--
-- 				-- C'est ICI que la magie opère pour Treesitter
-- 				integrations = {
-- 					treesitter = true,
-- 					treesitter_context = true,
-- 					mini = {
-- 						enabled = true,
-- 						indentscope_color = "",
-- 					},
-- 				},
--
-- 				-- On peut forcer des styles (italique, gras)
-- 				styles = {
-- 					comments = { "italic" },
-- 					conditionals = { "italic" },
-- 					loops = {},
-- 					functions = {},
-- 					keywords = {},
-- 					strings = {},
-- 					variables = {},
-- 					numbers = {},
-- 					booleans = {},
-- 					properties = {},
-- 					types = {},
-- 					operators = {},
-- 				},
-- 			})
--
-- 			-- Activation du thème
-- 			vim.cmd.colorscheme("catppuccin")
-- 		end,
-- 	},
-- }
