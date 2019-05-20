" don't use VI (old vim)
set nocompatible

" enable syntax and plugins
syntax enable " enable syntax processing
filetype plugin on

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers

inoremap jk <esc> " jk is escape

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugs')
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'marciomazza/vim-brogrammer-theme' 
  Plug 'morhetz/gruvbox' 
call plug#end()

set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox 

