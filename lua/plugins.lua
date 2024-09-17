return {
  --base16
  { 'RRethy/base16-nvim', lazy = true },
  --telescope
  {
    'nvim-telescope/telescope.nvim',
    branch = "0.1.x",
    dependencies = { 'nvim-lua/plenary.nvim' },

    lazy = true,
    keys = {
      -- file picker
      {
        "<leader>f",
        require("telescope.builtin").find_files, "n"
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
}
