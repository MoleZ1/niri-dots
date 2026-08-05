return {
	{
		'ramojus/mellifluous.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require 'mellifluous'.setup {
				transparent_background = {
					enabled = true,
					status_line = true,
				},
			}
			vim.cmd 'colorscheme mellifluous'
			vim.cmd 'highlight BlinkCmpMenu guibg=none'
			vim.cmd 'highlight BlinkCmpMenuBorder guibg=none'
		end
	},
	-- {
	-- 	'rose-pine/neovim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require 'rose-pine'.setup {
	-- 			variant = 'main',
	-- 			dark_variant = 'main',
	-- 			styles = { transparency = true },
	-- 		}
	--
	-- 		vim.cmd 'colorscheme rose-pine'
	-- 		vim.cmd 'highlight TelescopeBorder guibg=none'
	-- 		vim.cmd 'highlight BlinkCmpMenuBorder guibg=none'
	-- vim.cmd "highlight NormalFloat guibg='none'"
	-- vim.cmd "highlight FloatBorder guibg='none'"
	-- 	end
	-- },
	-- {
	-- 	'ellisonleao/gruvbox.nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require 'gruvbox'.setup {
	-- 			terminal_colors = true,
	-- 			undercurl = true,
	-- 			contrast = 'hard',
	-- 			dim_false = false,
	-- 			transparent_mode = true,
	-- 		}
	-- 		vim.cmd 'colorscheme gruvbox'
	-- 		vim.cmd 'highlight CursorLine guibg=#000001'
	-- 		vim.cmd 'highlight CursorLineNr guibg=#000001'
	-- 	end
	-- },
	-- {
	-- 	'oskarnurm/koda.nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require 'koda'.setup {
	-- 			transparent = true,
	-- 			theme = {
	-- 				dark = 'dark',
	-- 				light = 'light',
	-- 			},
	-- 		}
	--
	-- 		vim.cmd 'colorscheme koda'
	-- 	end
	-- },
	-- {
	-- 	'rebelot/kanagawa.nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require 'kanagawa'.setup {
	-- 			functionStyle = { italic = true },
	-- 			transparent = true,
	-- 			theme = 'dragon', background = {
	-- 			dark = 'dragon',
	-- 			light = 'lotus',
	-- 		},
	-- 		}
	--
	-- 		vim.cmd 'colorscheme kanagawa'
	-- 		vim.cmd 'highlight BlinkCmpMenuBorder guibg=none'
	-- 		vim.cmd 'highlight BlinkCmpMenuBorder guifg=#a6a69c'
	-- 		vim.cmd 'highlight LineNr guibg=none'
	-- 		vim.cmd 'highlight CursorLineNr guibg=none'
	-- 		vim.cmd 'highlight SignColumn guibg=none'
	-- 		vim.cmd 'highlight TelescopeBorder guibg=none'
	-- 		vim.cmd 'highlight @function guifg=#C8C093'
	-- 		vim.cmd 'highlight @function.call guifg=#C8C093'
	-- 		vim.cmd 'highlight @function.method guifg=#C8C093'
	-- 		vim.cmd 'highlight @function.method.call guifg=#C8C093'
	-- 		vim.cmd 'highlight @function.builtin guifg=#C8C093'
	-- 	end
	--
	-- },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			local custom_gruvbox = require 'lualine.themes.gruvbox'

			custom_gruvbox.normal.a.bg = "#333333"
			custom_gruvbox.normal.b.bg = "#222222"
			custom_gruvbox.normal.c.bg = "#000000"

			custom_gruvbox.normal.a.fg = "#ebdbb2"

			custom_gruvbox.insert.a.bg = "#fb4934"
			custom_gruvbox.insert.b.bg = "#222222"
			custom_gruvbox.insert.c.bg = "#000000"

			custom_gruvbox.insert.c.fg = "#a89984"

			custom_gruvbox.visual.a.bg = "#d79921"
			custom_gruvbox.visual.b.bg = "#222222"
			custom_gruvbox.visual.c.bg = "#000000"

			custom_gruvbox.visual.c.fg = "#a89984"

			custom_gruvbox.replace.a.bg = "#458588"
			custom_gruvbox.replace.b.bg = "#222222"
			custom_gruvbox.replace.c.bg = "#000000"

			custom_gruvbox.replace.c.fg = "#a89984"

			custom_gruvbox.command.a.bg = "#98971a"
			custom_gruvbox.command.b.bg = "#222222"
			custom_gruvbox.command.c.bg = "#000000"

			custom_gruvbox.command.c.fg = "#a89984"
			require 'lualine'.setup {
				-- options = { theme = custom_gruvbox }
				options = { theme = 'auto' }
			}
		end
	},
}
