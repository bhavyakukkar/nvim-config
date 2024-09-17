vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(usr)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
	--use({
	--	'rose-pine/neovim',
	--	as = 'rose-pine',
	--	--config = function()
	--	--	vim.cmd('colorscheme rose-pine')
	--	--end
	--})
	use {'ellisonleao/gruvbox.nvim'}
	use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
	--use('nvim-treesitter/playground')
	--use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	--use {
	--	'VonHeikemen/lsp-zero.nvim',
	--	branch = 'v2.x',
	--	requires = {
	--		-- LSP Support
	--		{'neovim/nvim-lspconfig'},             -- Required
	--		{'williamboman/mason.nvim'},           -- Optional
	--		{'williamboman/mason-lspconfig.nvim'}, -- Optional

	--		-- Autocompletion
	--		{'hrsh7th/nvim-cmp'},     -- Required
	--		{'hrsh7th/cmp-nvim-lsp'}, -- Required
	--		{'L3MON4D3/LuaSnip'},     -- Required
	--	}
	--}
	--use 'shaunsingh/solarized.nvim'
	--use 'rktjmp/lush.nvim'
	--use 'kelly-lin/ranger.nvim'
	--[[use {
		"luukvbaal/nnn.nvim",
		config = function() require("nnn").setup() end
	}--]]
	--use 'junegunn/goyo.vim'
    use 'norcalli/nvim-colorizer.lua'
    use {
        'nyngwang/nvimgelion',
        config = function ()
            -- do whatever you want for further customization~
        end
    }
	--use({
	--	'bluz71/vim-moonfly-colors',
	--	as = 'moonfly'
    --})
    --use({
    --    'glepnir/zephyr-nvim',
    --    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    --})
    use 'Mofiqul/dracula.nvim'
    --[[use {
        'maxmx03/dracula.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function ()
            local dracula = require 'dracula'
            dracula.setup()
            vim.cmd.colorscheme 'dracula'
        end
    }--]]
    --use { "catppuccin/nvim", as = "catppuccin" }
    --[[use {
        "gbprod/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nord").setup({})
            vim.cmd.colorscheme("nord")
        end,
    }--]]
    use({
        "Skullamortis/forest.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    })
    --use 'techygrrrl/techygrrrl-cmyk-colourrrs-neovim'
    use 'antonio-hickey/minty-melon'
    --use 'GlitchyCrafting/glitchcandy-nvim'
    --use 'mstcl/dmg'
    use 'RRethy/nvim-base16'
    --use 'mellow-theme/mellow.nvim'
    --[[use {'nvim-orgmode/orgmode', config = function()
            require('orgmode').setup{}
        end
    }--]]
    --use 'ThePrimeagen/vim-apm'
    --use { 'sthendev/mariana.vim', run='make' }
    use 'jnurmine/zenburn'
    use "blazkowolf/gruber-darker.nvim"
    --use { 'Shadorain/shadotheme' }
    use {'srcery-colors/srcery-vim', as = 'srcery'}
    --use({ "MaximilianLloyd/ascii.nvim", requires = {
    --    "MunifTanjim/nui.nvim"
    --} })
    use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup{}
    end
    }
    --use 'Nossigen/helix.nvim'
end)
