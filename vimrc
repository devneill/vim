" ----------------------------------------------------------vim base config 
" don't use VI (old vim)
set nocompatible

" enable syntax and plugins
syntax enable " enable syntax processing
filetype plugin on

" ----------------------------------------------------------my preferences
" tab set up
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces for indent
set expandtab       " tabs are spaces

set scrolloff=5 " start scrolling when cursor is 5 lines away from screen top or bottom
set autoindent " turn on auto indenting
set hidden " hide current document in buffer when changing to a new document
set visualbell " use a visual bell instead of an audible one 
set number          " show line numbers
set cursorline " highlight the line your cursor is in
set ttyfast " optimises for a fast terminal
set ruler " show cursor position

" fuzzy finder
set path+=**        " enable fuzzyfind
set wildmenu        " show menu when tabbing through options
" set wildmode=list:longest

" tag jumping
command! Maketags !maketags   
set tags=./tags;/ " scan for tags file, from current directory upwards

" --------------------------------------------------------keyboard shortcuts
"  set leader to ,
let mapleader = ","
" exit the mode you are in when j and k are consecutively pressed
inoremap jk <esc> " jk is escape
" open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" -------------------------------training wheels
" disable arrow keys in normal and insert mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" alter j and k behaviour
nnoremap j gj
nnoremap k gk

" autoclose config
source ~/.vim/config/autoclose.vim 

" ------------------------------------------------------------------plugins
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
  Plug 'mattn/emmet-vim'
call plug#end()

" -----------------------------------individual plugin config
" gruvbox config
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox 

" emmet config
let g:user_emmet_leader_key=','
