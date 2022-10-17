vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})
map('n', '<C-s>', ':w<CR>', {noremap = true, silent = false})
map('n', '<C-e>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})
map('n', '<C-j>', ':m .+1<CR>==', {noremap = true, silent = true})
map('n', '<C-k>', ':m .-2<CR>==', {noremap = true, silent = true})
map('i', '<C-k>', '<Esc>:m .-2<CR>==gi', {noremap = true, silent = true})
map('i', '<C-j>', '<Esc>:m .+1<CR>==gi', {noremap = true, silent = true})
map('v', '<C-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
map('v', '<C-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
