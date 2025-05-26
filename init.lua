local colorscheme = 'base16-gruvbox-material-dark-hard'

require("config.set")
require("config.remap")
require("config.lsp")

-- setup lazy
require("config.lazy").setup_with({
	colorscheme = colorscheme,
})

-- set colorscheme
vim.cmd('colorscheme ' .. colorscheme)
