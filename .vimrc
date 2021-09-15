" Plugins
call plug#begin('~/.vim/plugged')
    " Themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Plugins
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/goyo.vim'
    Plug 'freitass/todo.txt-vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'windwp/nvim-autopairs'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'preservim/nerdcommenter'
    Plug 'wakatime/vim-wakatime'
call plug#end()

syntax on                                       " enable syntax highlighting
set background=dark                             " we like it dark!
set termguicolors                               " using GUI color settings in a terminal
try | colorscheme dracula | catch | endtry      " use this awesome theme if possible
filetype plugin on                              " load plugins based on file type
filetype indent on                              " load indent settings based on file type
set number relativenumber                       " set relative number of the line
set shiftwidth=4                                " number of spaces to use for indenting
set softtabstop=4                               " number of spaces to use when inserting a tab
set tabstop=4                                   " show tabs as 2 spaces
set expandtab                                   " convert tabs into spaces
set autoindent                                  " copy indent from previous line
set ignorecase smartcase                        " search case-insensitively unless uppercase characters are used
set hidden                                      " allow unsaved buffers to be hidden
set ruler                                       " show cursor line and column in status
set cursorline cursorcolumn                     " show line and column where cursor is
set showcmd                                     " show current command in status line
set showmatch                                   " show matching braces
set notimeout                                   " disable timeout for finishing a mapping key sequence
set visualbell                                  " visual bell = no sounds
set undofile                                    " store undo info in a file
set undodir=~/.vim-undo                         " where to store undo info
set dir=~/tmp,/tmp                              " store swap files in $HOME/tmp or /tmp, whichever is available
set scrolloff=3                                 " keep 3 lines visible above/below the cursor when scrolling
set sidescrolloff=7                             " keep 7 characters visible to the left/right of the cursor when scrolling
set sidescroll=1                                " scroll left/right one character at a time
set splitbelow splitright                       " put new windows below or to the right
set encoding=utf-8                              " self explanatory
set formatoptions+=j                            " Delete comment character when joining commented lines
set hlsearch incsearch                          " incremental search highlight matches

if has('mac') && has('gui_running')
    set macligatures                            " Ligaturas de la tipografía
endif

" Read and make tags
set tags=tags
command! MakeTags !ctags -R .

" Convierte espacios en puntos visibles
set list
set lcs+=space:·

if has("nvim")
    set inccommand=nosplit                        " show substitutions incrementally
endif

" ignore certain patterns when completing file names
set wildignore+=*/node_modules/*,*/tmp/*,*/target/*,*/build/*,*/vendor/*

" set backspace=indent,eol,start
" set complete-=i
" set mouse=a
" highlight Normal ctermbg=NONE

nnoremap x "_x
nnoremap X "_X

" make escape work in terminal
tnoremap <Esc> <C-\><C-n>

" File Browsing
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_winsize = 25

let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown

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

autocmd BufRead,BufNewFile *.md :Goyo 80
autocmd BufRead,BufNewFile *.md set spell spelllang=es_es,en_us
let g:goyo_height = 95

autocmd BufNewFile,BufRead *.phtml set syntax=html
autocmd BufNewFile,BufRead *blade.php set syntax=html

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.php = ['php']
let g:vsnip_filetypes.php = ['html']

let mapleader=" "
let maplocalleader=" "

nnoremap ç :
nmap <Leader>nt :Vexplore<CR>
" Using Lua functions
nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Read an empty HTML template and move cursor to title
nnoremap <Leader>html :-1read $HOME/.vim/.skeleton.html<CR>6jwf>

" Centrar verticalmente la pantalla al entrar en modo edición con i
autocmd InsertEnter * norm zz

" Alias to replace all with S
nnoremap <Leader>s :%s///gI<Left><Left><Left><Left>

" Alias to use + registry in yank and paste
vnoremap <C-c> "+y
map <C-v> "+P

" Wrap visual selection in an HTML tag.
vmap <Leader>t <Esc>:call VisualHTMLTagWrap()<CR>

function! VisualHTMLTagWrap()
  let tag = input("Tag to wrap block: ")
  if len(tag) > 0
    normal `>
    if &selection == 'exclusive'
      exe "normal i</".tag.">"
    else
      exe "normal a</".tag.">"
    endif
    normal `<
    exe "normal i<".tag.">"
    normal `<
  endif
endfunction

" ABBREVIATIONS
ab teh the
ab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean risus dui, ultrices in justo vehicula, tempus varius odio. Donec ante dolor, congue a est eu, fermentum auctor risus.

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <Leader><tab> <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.css lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.php lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync(nil, 100)

" LUA Setups
lua << EOF
    require('init')
EOF

