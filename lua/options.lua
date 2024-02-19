-- , gives the middle finger to the keyboard 
vim.g.mapleader = ","
-- g global variables i guess
vim.o.linebreak     = true
vim.o.tabpagemax    = 10
vim.o.colorcolumn   = '100'
vim.o.autoindent    = true 
vim.o.shiftwidth    = 4
vim.o.tabstop       = 4 
vim.o.smarttab      = true
vim.o.expandtab     = true
vim.o.termguicolors = true
vim.o.incsearch     = true
vim.o.backup        = false
vim.o.writebackup   = false 
vim.o.wildmenu      = true
vim.o.laststatus    = 2
vim.o.nu            = true
vim.o.rnu           = true 
vim.o.cmdheight     = 2
vim.o.title         = true
vim.o.foldcolumn    = '1'
vim.o.swapfile      = false
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'
vim.cmd 'colorscheme ron'

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
