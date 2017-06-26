execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

nnoremap ss i<space><esc>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'junegunn/vim-easy-align'
  Plug 'pearofducks/ansible-vim'
  Plug 'vim-scripts/nginx.vim'
  Plug 'mitsuhiko/jinja2'
call plug#end()
