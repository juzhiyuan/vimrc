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

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Raimondi/delimitMate'
Plugin 'chemzqm/wxapp.vim'
Plugin 'iamcco/markdown-preview.nvim'

" 插件列表结束
call vundle#end()
filetype plugin indent on
