set number
set autoindent
set expandtab
set showmatch
syntax on
set mouse-=a
set autoread
set smartindent
set hlsearch
set ruler
set laststatus=2

"浅色显示当前行
autocmd InsertLeave * se nocul

"浅色高亮当前行
autocmd InsertEnter * se cul

set showcmd
set encoding=utf-8
set nocompatible

filetype off
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
Plug 'Lokaltog/vim-powerline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Raimondi/delimitMate'
Plug 'chemzqm/wxapp.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()
filetype plugin indent on
