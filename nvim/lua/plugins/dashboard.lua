return {
	'nvimdev/dashboard-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	event = 'VimEnter',
	config = function()
		require 'dashboard'.setup {
			config = {
				-- header = {
				-- 	'  ███▄ ▄███▓ ▒█████   ██▓    ▓█████ ▒███████▒    ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
				-- 	' ▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒    ▓█   ▀ ▒ ▒ ▒ ▄▀░    ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
				-- 	' ▓██    ▓██░▒██░  ██▒▒██░    ▒███   ░  ▒▄▀▒░    ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
				-- 	'▒██    ▒██ ▒██   ██░▒██░    ▒▓█  ▄   ▄▀▒   ░   ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██',
				-- 	' ▒██▒   ░██▒░ ████▓▒░░██████▒░▒████▒▒███████▒   ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
				-- 	' ░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░▓  ░░░ ▒░ ░░▒▒ ▓░▒░▒   ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
				-- 	' ░  ░      ░  ░ ▒ ▒░ ░ ░ ▒  ░ ░ ░  ░░░▒ ▒ ░ ▒   ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
				-- 	' ░      ░   ░ ░ ░ ▒    ░ ░      ░   ░ ░ ░ ░ ░      ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░',
				-- 	' ░       ░ ░      ░  ░   ░  ░  ░ ░                ░    ░  ░    ░ ░        ░   ░         ░',
				-- 	' ░                                           ░                 ',
				-- 	'BY A MOLEζ',
				-- 	'',
				-- },
				header = {
					'',
					'',
					'',
					'	 ∙ ▌ ▄ ·.         ▄▄▌   ▄▄▄ . ·▄▄▄▄∙       ▐ ▄  ▄▄▄ .         ▌ ▐· ■   ∙ ▌ ▄ ·.',
					'	 ·██ ▐███■ ■      ██∙   ▀▄.▀· ■▀·.█▌      ∙█▌▐█ ▀▄.▀· ■      ■█·█▌ ██  ·██ ▐███■',
					'	 ▐█ ▌▐▌▐█·  ▄█▀▄  ██■   ▐▀▀■▄ ▄█▀▀▀∙      ▐█▐▐▌ ▐▀▀■▄  ▄█▀▄  ▐█▐█∙ ▐█· ▐█ ▌▐▌▐█·',
					'	 ██ ██▌▐█▌ ▐█▌.▐▌ ▐█▌▐▌ ▐█▄▄▌ █▌■▄█▀      ██▐█▌ ▐█▄▄▌ ▐█▌.▐▌  ███  ▐█▌ ██ ██▌▐█▌',
					'	 ▀▀  █■▀▀▀  ▀█▄▀■. ▀▀▀   ▀▀▀  ·▀▀▀ ∙      ▀▀ █■  ▀▀▀   ▀█▄▀■.  ▀   ▀▀▀ ▀▀  █■▀▀▀',
					'',
					'BY A MOLEζ',
					'',
				},
				shortcut = {
					{
						icon = 'ζ',
						desc = ' Update',
						group = '@property',
						action = 'Lazy update',
						key = 'u'
					},
					{
						icon = 'ζ',
						desc = ' Find Files',
						group = 'Label',
						action = 'Telescope find_files',
						key = 'f',
					},
					{
						icon = 'ζ',
						desc = ' Find Word',
						group = 'DiagnosticHint',
						action = 'Telescope live_grep',
						key = 'w',
					},
					{
						icon = 'ζ',
						desc = ' Find Old Files',
						group = '@property',
						action = 'Telescope oldfiles',
						key = 'o',
					},
				},
				footer = {
					'',
					'Polvo los dos, invisibles                    ',
					'		-a menos que nos suspenda un rayo de sol-,  ',
					'				cómo nos estrechamos sin tener cuerpo,    ',
					'						con cuánto amor nos decimos:            ',
					'								Por fin estamos juntos, somos iguales.',
					'',
					'-José Emilio Pacheco                         ',
				},
			}
		}
		vim.cmd "highlight DashboardHeader guifg=#C95954"
		vim.cmd "highlight DashboardFooter guifg=#CBAA89"
	end
}
