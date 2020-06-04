packadd! dracula
syntax enable
colorscheme dracula
set number
set hidden
set ignorecase
set smartcase
set mouse=a
set nobackup
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader = ','

" WIKI
let wiki_1 = {}
let wiki_1.path = '~/doc/notes/personal'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.index = 'home'

let wiki_2 = {}
let wiki_2.path = '~/doc/notes/work'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'
let wiki_2.index = 'home'


let g:vimwiki_list = [wiki_1, wiki_2]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

:nmap <Leader>tl <Plug>VimwikiToggleListItem
:vmap <Leader>tl <Plug>VimwikiToggleListItem
