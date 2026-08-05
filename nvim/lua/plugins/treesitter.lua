return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		local languages = {
			'c',
			'cpp',
			'css',
			'html',
			'json',
			'lua',
			'python',
			'qmljs',
			'typescript'
		}

		require('nvim-treesitter').install(languages)

		vim.treesitter.language.register('qmljs', 'qml')

		vim.api.nvim_create_autocmd('FileType', {
			pattern = vim.list_extend(vim.deepcopy(languages), { 'qml' }),
			callback = function() vim.treesitter.start() end,
		})
	end
}
