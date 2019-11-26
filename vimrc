" General
set nocompatible
set shell=/bin/bash secure
set modeline modelines=4
noremap <F1> <Esc>
inoremap <F1> <Esc>
let xml_use_html = 1

" Plug
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'sickill/vim-monokai'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mdempsky/gocode'

call plug#end()

set background=dark
color monokai

" Editing
set autowrite autoindent
set mouse=a
set nojoinspaces            " Don't put 2 spaces after a full stop
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set foldenable foldlevelstart=99

" Store .swp files in /var/tmp with mangled names
set directory=/var/tmp//

" Windows
set equalalways
set splitbelow splitright

" NERD-Tree
map <C-n> :NERDTreeToggle<CR>

" Sessions
set viminfo=!,'100,<50,s10,h
let sessionman_save_on_exit = 1

" Let %% expands to directory of %
cabbr <expr> %% expand('%:h')

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Filetypes
autocmd BufRead,BufNewFile *.ejs    set filetype=html
autocmd BufRead,BufNewFile *.ru     set filetype=ruby
autocmd BufRead,BufNewFile *.inc    set filetype=sh
autocmd BufRead,BufNewFile *.md     set filetype=mkd
autocmd BufRead,BufNewFile *.cfg    set filetype=dosini
autocmd BufRead,BufNewFile *.adoc   set filetype=asciidoc
autocmd FileType javascript,ruby,sh set number

" Shell scripts
let g:is_bash=1
