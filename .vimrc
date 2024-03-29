source ~/code/personal/vim_local/vundle.vim

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

" Use system clipboard
set clipboard=unnamed

" Use vertical splits on diff
set diffopt+=vertical

" Use magic regex by default
nnoremap / /\v
vnoremap / /\v

vmap <C-c> "+y
vmap <C-v> "+p

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
set autoindent
set ruler
filetype plugin indent on


set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.py let python_highlight_all=1

au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.html set syntax=htmldjango

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Folding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldnestmax=100
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
let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> TypeScript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.ts setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.ts setl shiftwidth=2
"format json
map <leader>j :%!python -mjson.tool<CR>
let g:jsx_ext_required = 0

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
"=> Terraform
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.tf setl shiftwidth=2
autocmd BufRead,BufNewFile *.tf set filetype=terraform

autocmd BufNewFile,BufReadPost *.hcl setl shiftwidth=2
autocmd BufRead,BufNewFile *.hcl set filetype=terraform

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Vim Gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1


"""
" "=> ALE
""""
" let g:ale_linters = ['flake8', 'pylint']
let g:ale_lint_on_save = 1

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "=> Syntastic
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " This is here because it was loading after settings were set
" source ~/.vim/bundle/syntastic/plugin/syntastic.vim 
" 
" 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_css_checkers = ['csslint']
" let g:syntastic_less_checkers = ['csslint']
" let g:syntastic_sass_checkers=["sass_lint"]
" let g:syntastic_scss_checkers=["sass_lint"]
" let g:syntastic_typescript_checkers=["tslint"]
" let b:syntastic_mode = 'passive'

" source ~/vim_local/csslint.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <F1> :Autoformat<CR><CR>
let g:formatprg_args_expr_javascript = '"-f - -s.$shiftwidth"'

"""
"=> Spelling
"""

function! SpellCheck()
    if &spell
        setlocal nospell
    else
        setlocal spell spelllang=en_us
    endif
endfunction

nnoremap <leader>s :call SpellCheck()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Local VimRC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:local_vimrc=".local_vimrc"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Buffergator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:buffergator_show_full_directory_path = 0
let g:buffergator_vsplit_size = 70

if has("patch-8.1.0360")
    set diffopt+=internal,algorithm:patience
endif
