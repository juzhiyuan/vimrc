if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
set autoindent

set tabstop=2
set softtabstop=2
set shiftwidth=2
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

">>> Plugins
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
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

"rust
Plug 'rust-lang/rust.vim'

" Load config
for path in split( globpath('~/vimrc/config', '*.vim'), '\n')
    execute 'source ' . path
endfor

call plug#end()
filetype plugin indent on

">>> Configuration

"Rust
let g:rustfmt_autosave = 1

let g:deoplete#enable_at_startup = 1
