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
Plugin 'stephpy/vim-yaml'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'embear/vim-localvimrc'
Plugin 'bling/vim-airline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'szw/vim-tags'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

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
