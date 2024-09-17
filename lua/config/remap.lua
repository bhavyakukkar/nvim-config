-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", "<Esc>jV")
vim.keymap.set("v", "K", "<Esc>kV")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("v", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- windows
vim.keymap.set("n", "<M-h>", "<C-W>h")
vim.keymap.set("n", "<M-l>", "<C-W>l")
vim.keymap.set("n", "<M-k>", "<C-W>k")
vim.keymap.set("n", "<M-j>", "<C-W>j")

-- tabs
vim.keymap.set("n", "<C-S-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<C-S-w>", vim.cmd.tabclose)
vim.keymap.set("n", "<C-tab>", vim.cmd.tabnext)
vim.keymap.set("n", "<C-S-tab>", vim.cmd.tabprevious)

-- terminal mode
vim.keymap.set("t", "<Esc>", "<C-Bslash><C-N>")

--vim.api.nvim_set_keymap("n", "<leader>pv", "", {
--    noremap = true,
--    callback = function()
--        require("ranger-nvim").open(true)
--    end,
--})

vim.cmd[[cabbrev E Ex]]
