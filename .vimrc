""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'embear/vim-localvimrc'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'groenewege/vim-less'
Plugin 'Chiel92/vim-autoformat'
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%{fugitive#statusline()}\ \ \ \ %<%f%=\ [%l\,%c]\ %p%%
set laststatus=2
set relativenumber

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase "If search contains caps, use case sensitive search
set hlsearch "Highlight all search matches.

set nolazyredraw "Don't redraw while executing macros
set showmatch "Show matching brackets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable "Enable syntax hl
syntax on

" Toggle Paste Mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is under source control anyway...
set nobackup
set nowb
set noswapfile
set undodir=/tmp/vim/undodir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set ruler


set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let python_highlight_all = 1

au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.html set syntax=htmldjango

autocmd BufWritePost *.py call Flake8()
autocmd FileType python map <leader>f :call Flake8()<CR>
let g:flake8_ignore="E127,E128,E251,E261,E309"
let g:flake8_max_line_length=110

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldnestmax=10
set foldlevel=20
noremap <space> za

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
nmap <leader>a :NERDTreeToggle<CR>
nmap <leader>q :NERDTreeFind<CR>
let g:NERDTreeDirArrows=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> CoffeeScript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> JavaScript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.js setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2
autocmd BufNewFile,BufReadPost *.jsx setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.jsx setl shiftwidth=2
"format json
map <leader>j :%!python -mjson.tool<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.html setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.html setl shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> CSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.css setl shiftwidth=2
autocmd BufNewFile,BufReadPost *.less setl shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Vim Gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_javascript_checkers = ['jsxhint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <F1> :Autoformat<CR><CR>
