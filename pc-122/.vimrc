set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set background=light

syntax on
set autoindent
set pastetoggle=<F2>

match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e

set wildmode=longest,list
set wildmenu

au BufNewFile,BufRead,BufReadPost *.cgi set syntax=perl

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

