set expandtab
set tabstop=4
set shiftwidth=4
set background=light
set autoindent
set pastetoggle=<F2>

set ai "Auto indent

" highlight and also remove on save trailing whitespace
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e

set wildmode=longest,list
set wildmenu
