set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set smartindent
set tabstop=4
set smarttab
set shiftwidth=4
set expandtab
set ruler
set lines=60 columns=80

filetype on
filetype plugin on

syntax enable
set background=dark
colorscheme solarized 

""Folding
set foldmethod=indent
set foldnestmax=10
nnoremap <space> za
nnoremap <F11> zr
nnoremap <F12> zm

if has("gui_macvim")
  set guifont=Menlo:h10:cANSI
elseif has("gui_running")
  set guifont=Consolas:h10:cANSI
endif

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

autocmd BufEnter *.jinja set filetype=jinja

helptags C:\Program\ Files\Vim\vim73\doc
