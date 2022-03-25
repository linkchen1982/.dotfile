" init.vim
" This file is for neovim to config.

" --- General start --- "
syntax on
set number
set relativenumber
set splitbelow
set splitright
set signcolumn=yes
set cursorline
set autoindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set incsearch
set encoding=UTF-8
set expandtab
""" set mouse=a
" --- General end   --- "

" --- Plugins start --- "
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme gruvbox-material
" --- Plugins end   --- "

