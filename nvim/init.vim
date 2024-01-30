set number relativenumber
set clipboard+=unnamedplus
set mouse=a
set background=dark
set tabstop=4
set shiftwidth=0
set expandtab
set splitbelow
set splitright
set list
set listchars=space:·,eol:,tab:
let mapleader=","

match errorMsg /\s\+$/

syntax enable

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
let g:airline#extensions#tabline#enabled = 1

call plug#begin(stdpath('data') . '/plugged')

Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'arcticicestudio/nord-vim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-lint'
Plug 'mhartington/formatter.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'lukas-reineke/indent-blankline.nvim'


call plug#end()


colorscheme nord
set termguicolors " this variable must be enabled for colors to be applied properly

lua require("init")

let g:airline_powerline_fonts = 1
