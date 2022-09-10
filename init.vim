"==================
let mapleader = ","
"KEY MAPPINGS
"------------------

"escape insert mode with jj
inoremap jj <esc>
"return to the last cursor position with ,l
nnoremap <leader>l ``
"start command prompt using space 
nnoremap <space> :
"yank from cursor to the end of line
nnoremap Y y$

"save the hard work to press the w key 
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><

"----------------
" basics
set clipboard+=unnamedplus
set encoding=utf8
set linebreak
filetype on 
syntax on
set tabpagemax=10
set exrc
set secure
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

" indentation
set autoindent
filetype indent on 
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set termguicolors

" higlight chars as you search
set incsearch

set nobackup "just don't

" tab autocompletion
set wildmenu

" show status bar always 
set laststatus=2

" set number and relative numbers 
set nu
set rnu

set cmdheight=2
set title
set foldcolumn=1

"=============================================
"PLUGINS : store in plugged directory
"==============================================
call plug#begin('~/.config/nvim/plugged')
Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy', {'branch' : 'main'}
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch' : 'artifacts'}
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier' ,{
            \'do' : 'yarn --frozen-lockfile --production',
            \ 'for' : ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'ianks/vim-tsx'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'MaxMEllon/vim-jsx-pretty'
call plug#end()

"set colorscheme
colorscheme onebuddy
"mirror nerdtree before showing it 
map <silent> <C-n> :NERDTreeFocus<CR>
"pointing to the language server processing file
luafile ~/.config/nvim/lsp_config.lua
"lsp setup"
"----------
sign define LspDiagnosticsSignError text=🔴
sign define LspDiagnosticsSignWarning text=🟠
sign define LspDiagnosticsSignInformation text=🔵
sign define LspDiagnosticsSignHint text=🟢

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>f    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
xmap <silent> <leader>a <cmd>lua vim.lsp.buf.range_code_action()<CR>

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"coq nvim start and remove greeting message 
map <silent> <C-c> :COQnow -s

lua << END
require('lualine').setup()
END

