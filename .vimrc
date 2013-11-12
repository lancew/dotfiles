" Set to auto read when a file is changed from the outside
set autoread

" Enable syntax highlighting
syntax enable



set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set pastetoggle=<F2>

set ai "Auto indent

" highlight and also remove on save trailing whitespace
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e

