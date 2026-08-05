return {
	{
		'neovim/nvim-lspconfig',
		config = function()
			vim.lsp.config('bashls', {})

			vim.lsp.config('clangd', {
				cmd = {
					'clangd',
					'--background-index',
					'--clang-tidy',
					'--completion-style=detailed',
					'--header-insertion=iwyu',
					'--function-arg-placeholders',
					'--pch-storage=memory',
					'--offset-encoding=utf-8',
					'--fallback-style=llvm',
				}
			})

			vim.lsp.config('cssls', {
				cmd = {
					'vscode-css-language-server',
					'--stdio',
				},
				filetypes = {
					'css',
					'scss',
					'less',
				},
				init_options = { provideFormatter = true },
			})

			vim.lsp.config('html', {})

			vim.lsp.config('jsonls', {
				cmd = {
					'vscode-json-language-server',
					'--stdio',
				},
				filetypes = {
					'json',
					'jsonc',
				},
				init_options = { provideFormatter = true },
			})

			vim.lsp.config('lua_ls', {
				cmd = { 'lua-language-server' },
				filetypes = { 'lua' },
				settings = {
					Lua = {
						runtime = { version = 'LuaJIT' },
						workspace = { library = vim.api.nvim_get_runtime_file('', true) },
						codeLens = { enable = true },
						hint = {
							enable = true,
							semicolon = 'Disable',
						},
					},
				},
			})

			vim.lsp.config('pyright', {
				cmd = {
					'pyright-langserver',
					'--stdio',
				},
				filetypes = { 'python' },
				root_markers = {
					'pyrightconfig.json',
					'pyproject.toml',
					'setup.py',
					'setup.cfg',
					'requirements.txt',
					'Pipfile',
					'.git'
				},
				settings = {
					python = {
						analysis = {
							disableOrganizeImports = false,
							autoImportCompletions = true,
							autoSearchPaths = true,
							diagnosticMode = 'openFilesOnly',
							useLibraryCodeForTypes = true,
						}
					}
				}
			})

			vim.lsp.config('ts_ls', {})

			vim.lsp.config('qmlls', {
				cmd = { 'qmlls6' },
				filetypes = { 'qml' },
			})

			vim.lsp.enable {
				'bashls',
				'clangd',
				'cssls',
				'html',
				'jsonls',
				'lua_ls',
				'pyright',
				'ts_ls',
				'qmlls',
			}
		end
	},
	{
		'ray-x/lsp_signature.nvim',
		event = 'InsertEnter',
		config = function()
			require 'lsp_signature'.setup {
				bind = true,
				floating_window = true,
				handler_options = {
					border = 'rounded',
				},
			}
		end

	},
	{
		'linrongbin16/lsp-progress.nvim',
		config = function()
			require 'lsp-progress'.setup {}
		end
	}
}
