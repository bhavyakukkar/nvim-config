-- command on file
function command_on_file(cmd)
    local bufnr = vim.api.nvim_get_current_buf()
    local filename = vim.api.nvim_buf_get_name(bufnr)
    --vim.fn.jobstart({cmd, filename}, {
    vim.fn.jobstart(cmd(filename), {
        on_stdout = function()
            vim.api.nvim_buf_call(bufnr, function()
                vim.cmd.edit { bang = true }
            end)
        end
    })
end

-- RustFmt current buffer
vim.api.nvim_create_user_command('RustFmtt', function()
    command_on_file(function(filename)
        return {"rustfmt", filename}
    end)
end, {})

-- OcamlFormat current buffer
vim.api.nvim_create_user_command('OcamlFmt', function()
    command_on_file(function(name)
        return {"ocamlformat", filename, ">", filename}
    end)
end, {})
