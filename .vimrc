set nocompatible
filetype off

set go=
set hidden
set wildmenu
set showcmd
set hlsearch
set smartcase
set autoindent
set ruler
set number
" set relativenumber
set autoread
set shiftwidth=4
set softtabstop=4 
set tabstop=4 
set cursorline 
set expandtab
set showmatch
set foldenable
set encoding=utf-8
set guifont=Consolas:h14
set spell spelllang=en_us
set t_Co=256
colorscheme molokai

" leader
let mapleader = " "
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>Q :q!<CR>
nmap <leader>p "+p<CR>
nmap <leader>P "+P<CR>
vmap <leader>y "+y<CR>
vmap <leader>p "+p<CR>
vmap <leader>P "+P<CR>
nmap <leader>s ZZ<CR>
nmap <leader><leader> :sh<CR>

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" gitgutter 
let g:gitgutter_max_signs=10000

" airline 
let g:airline#extensions#tabline#enabled = 1
set ambiwidth=double
set noshowmode
set laststatus=2

" tagbar
nmap <F4> :TagbarToggle<CR>

" latex
filetype plugin on
filetyp indent on
let g:Tex_IgnoredWarnings=7
let g:Tex_DefaultTargetFormat='pdf'
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set sw=2

" YouCompleteMe
let g:ycm_python_binary_path='usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf =0

" set current path as the path 
set autochdir
" hange cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set timeoutlen=500 ttimeoutlen=0
