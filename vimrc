" don't use VI (old vim)
set nocompatible

" enable syntax and plugins
syntax enable " enable syntax processing
filetype plugin on

" general set up
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers

" fuzzy finder
set path+=**        " enable fuzzyfind
set wildmenu        " show menu when tabbing through options

" tag jumping
command! Maketags !maketags   
set tags=./tags;/ " scan for tags file, from current directory upwards

" exit the mode you are in when j and k are consecutively pressed
inoremap jk <esc> " jk is escape

" code needed to set up plug-in manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" import plug in libraries
call plug#begin('~/.vim/plugs')
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'morhetz/gruvbox' 
call plug#end()

" gruvbox config
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox 

