-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'junegunn/goyo.vim'
    
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'
  use 'simrat39/rust-tools.nvim'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/vim-vsnip'     
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'maxmellon/vim-jsx-pretty' }
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'tjdevries/colorbuddy.vim'}
  use {'fatih/vim-go', run = ':GoUpdateBinaries'}
  
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'svrana/neosolarized.nvim'
  use 'rafamadriz/friendly-snippets'
end)


