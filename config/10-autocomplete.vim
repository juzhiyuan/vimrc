" deoplete

Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neco-syntax'

let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
set completeopt-=preview

" imap <C-e> <Plug>(neosnippet_expand)
Plug 'autozimu/LanguageClient-neovim', {'rev': 'next','build': 'bash install.sh'}

set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['node', '/Users/juzhiyuan/.config/yarn/global/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'typescript': ['node', '/Users/juzhiyuan/.config/yarn/global/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'javascript.jsx': ['node', '/Users/juzhiyuan/.config/yarn/global/node_modules/javascript-typescrit-langserver/lib/language-server-stdio.js'],
    \ }

Plug 'Shougo/echodoc.vim'
let g:echodoc_enable_at_startup = 1
set noshowmode

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

Plug 'Shougo/deoppet.nvim'
