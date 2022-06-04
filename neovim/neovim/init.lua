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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/Ultisnips'
Plug 'honza/vim-snippets'
Plug 'shougo/deoplete.nvim'

vim.call('plug#end')

vim.g.gruvbox_italics = 1
vim.g.gruvbox_italicize_strings = 1
vim.g.gruvbox_number_column="dark1"

vim.g.gruvbox_color_column="faded_orange"

vim.api.nvim_command('colorscheme gruvbox')

vim.g.rainbow_active = 1

vim.api.nvim_set_var('deoplete#enable_at_startup', 1)

vim.g.UltiSnipsExpandTrigger="<tab>"
vim.g.UltiSnipsJumpForwardTrigger="<tab>"
vim.g.UltiSnipsJumpBackwardTrigger="<s-tab>"

vim.api.nvim_command("inoremap <expr> <C-n> deoplete#manual_complete()")

vim.g.WikiIndex="/home/folkert/Documents/Notes/"

vim.keymap.set('n', '<leader>ww', function()
    vim.cmd("edit " .. vim.g.WikiIndex .. "index.mkiv")
end, {desc = 'Go to wiki index' })

--[[ local function test()
    print("test")
 end
]]

--[[
local api = vim.api
local autoCompileContext = api.nvim_create_augroup("AutoCompileContext",
	{ clear = true })
]]

--[[
api.nvim_create_autocmd(
	{"InsertLeave"},
	{pattern={"*.mkiv"}, callback=test, group=autoCompileContext})
]]
