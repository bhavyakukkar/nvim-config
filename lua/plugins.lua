return {
	--[colorscheme] base16
	{ 'RRethy/base16-nvim',    lazy = true },
	--[colorscheme] flexoki
	{ 'kepano/flexoki-neovim', name = 'flexoki', lazy = true },
	--telescope
	{
		'nvim-telescope/telescope.nvim',
		tag = "0.1.8",
		dependencies = { 'nvim-lua/plenary.nvim' },

		lazy = true,
		keys = {
			-- file picker
			{
				"<leader>f",
				function() require("telescope.builtin").find_files() end,
				"n"
			},
			-- open buffer picker (most recent first)
			{
				"<leader>b",
				function()
					require("telescope.builtin").buffers({
						ignore_current_buffer = true,
						sort_mru = true,
					})
				end,
				"n"
			},
			-- project-wide search
			{
				"<leader>s",
				function()
					require("telescope.builtin").grep_string({ search = vim.fn.input("search: ") })
				end,
				"n"
			},
		},
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
	{
		'norcalli/nvim-colorizer.lua',
		lazy = false,
	},
	-- helix-keybindings
	{
		dir = "~/dev/lua/nvim-plugins/selix-nvim",
		lazy = false,
		enabled = false,
		opts = {
			-- callback that selix will call when statusline is to be updated
			dispatch_statusline = function(statusline)
				-- this is the default nvim statusline
				local default_statusline = "%<%f %h%m%r%=%-14.(%l,%c%V%) %P"
				-- here we append selix's statusline's mode to the beginning of the default statusline
				if statusline.mode then
					vim.o.statusline = " " .. statusline.mode .. "  " .. default_statusline
				else
					vim.o.statusline = " <vim-nor>  " .. default_statusline
				end
			end,
			-- compatibility options
			compat = {
				-- Esc in Selix NOR mode (Nvim visual mode w/ extra steps) returns to Nvim normal mode
				-- (instead of back to Selix NOR mode)
				-- default: false
				esc_nor_to_vim_normal_mode = true,
				-- Esc in Selix INS mode (Nvim insert mode) returns to Nvim normal mode
				-- (instead of back to Selix NOR mode)
				-- default: false
				esc_ins_to_vim_normal_mode = false,
			}
		},
	},
	-- visual.nvim
	--{
	--	--dir = '~/dev/lua/nvim-plugins/visual.nvim',
	--	'00sapo/visual.nvim',
	--	event = "VeryLazy",
	--	--keys = {
	--	--	{
	--	--		"j",
	--	--		"<esc>jw'",
	--	--		mode = "v",
	--	--	},
	--	--	{
	--	--		"k",
	--	--		"<esc>kw'",
	--	--		mode = "v",
	--	--	},
	--	--},
	--	-- commands = {
	--	-- 	move_up_then_normal = { amend = true },
	--	-- 	move_down_then_normal = { amend = true },
	--	-- 	move_right_then_normal = { amend = true },
	--	-- 	move_left_then_normal = { amend = true },
	--	-- },
	--	opts = {
	--		archive_notification = true,
	--	},
	--	config = function()
	--		vim.cmd('VisualEnable')
	--	end
	--},
}
