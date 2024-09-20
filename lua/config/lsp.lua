-- rust / cargo / rust-analyzer
-- requires rust-analyser installed and in $PATH
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'rust',
	callback = function(args)
		vim.lsp.start({
			name = 'rust-analyzer',
			cmd = { 'rust-analyzer' },
			root_dir = vim.fs.root(args.buf, { 'Cargo.toml' }),
		})
	end,
})

-- typescript / typescript-language-server
-- requires typescript-language-server installed in current nodejs project
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'typescript', 'typescriptreact' },
	callback = function(args)
		vim.lsp.start({
			name = 'typescript-language-server',
			cmd = { vim.fs.root(args.buf, { 'package.json' }) .. '/node_modules/.bin/typescript-language-server', '--stdio' },
			root_dir = vim.fs.root(args.buf, { 'package.json' }),
		})
	end,
})

-- lua / lua-language-server
-- requires lua-language-server installed and in $PATH
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'lua',
	callback = function(args)
		local projroot = vim.fs.root(args.buf, { 'init.lua' })
		vim.lsp.start({
			name = 'lua-language-server',
			cmd = { 'lua-language-server', args.file },
			root_dir = vim.fs.root(args.buf, { 'init.lua' }) or vim.fs.dirname(args.file),
		})
	end,
})
