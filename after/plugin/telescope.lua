local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', function()
	builtin.grep_string({ search = vim.fn.input("? ") })
end)
vim.keymap.set('n', '<leader>b', function()
    builtin.buffers({
        ignore_current_buffer = true,
        sort_mru = true,
    })
end, {})
--vim.keymap.set('n', '<leader>s', builtin.grep_string, {})
