vim.o.number = true

vim.o.showmatch = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.cc = "80"

vim.o.clipboard = "unnamedplus"
vim.o.ttyfast = true
vim.o.termguicolors = true

vim.o.updatetime=100

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
Plug 'euclidianace/betterlua.vim'
Plug 'thindil/Ada-Bundle'

vim.call('plug#end')

vim.g.gruvbox_italics = 1
vim.g.gruvbox_italicize_strings = 1
vim.g.gruvbox_number_column="dark1"

vim.g.gruvbox_color_column="faded_orange"

vim.api.nvim_command('colorscheme gruvbox')

vim.g.rainbow_active = 1
