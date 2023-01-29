vim.g.mapleader = " "

vim.api.nvim_set_keymap('i', 'jh', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>es', ':wq<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ee', ':q!<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':w<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>upi', ':PackerSync<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>cpi', ':PackerClean<cr>', {})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>f', function()
	vim.lsp.buf.format()
end)

vim.o.relativenumber = true

require('packer-plugins')
require('lua-line.status-line')
require('tree-sitter.tree-sitter-config')
require('completion.autocomplete')
require('lsp-config.language-servers')
