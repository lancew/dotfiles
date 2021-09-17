set expandtab
set tabstop=4
set shiftwidth=4
set background=light
set autoindent
set pastetoggle=<F2>

set ai "Auto indent

syntax on

" highlight and also remove on save trailing whitespace
match ErrorMsg '\s\+$'
autocmd BufWritePre * :%s/\s\+$//e

set wildmode=longest,list
set wildmenu

" Allow easy running of perltidy when editing a perl file, bound to 'Ctrl+t'
:au Filetype perl nnoremap <C-t> :%!perltidy -q -npro<CR>
:au Filetype perl vnoremap <C-t> <line1>,<line2>!perltidy -q -npro<CR>
