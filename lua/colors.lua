--https://github.com/Mofiqul/dracula.nvim/blob/a6cb758d4b182d9f2b7e742910078d94877c1059/README.md#-configuration
local dracula = require("dracula")
dracula.setup({
  colors = {
    bg = "#1e1f29",
  },
  show_end_of_buffer = false, -- default false
  lualine_bg_color = "#44475a", -- default nil
  italic_comment = true, -- default false
  overrides = {},
})



--finally, set color
--vim.cmd[[colorscheme srcery]]

-- srcery
vim.g.srcery_bright_blue = "#BAA67F"
vim.g.srcery_bright_black = "#585858"
vim.cmd([[color base16-everforest]])
