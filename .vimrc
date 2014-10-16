set number
set numberwidth=6
set tabstop=4
set expandtab
set shiftround
set smartindent
set ruler
set nobackup
set nowritebackup
set noswapfile
set nowrap
syntax on

let mapleader = "-"
let maplocalleader = "\\"

" custom mappings
" move current line down
nnoremap <leader>d ddp

" move current line up
nnoremap <leader>u ddkP

" delete line in insert mode
inoremap <c-d> <esc>ddi

" UPPERcase current word
inoremap <c-u> <esc>viwU<esc>wi

" lowercase current word
inoremap <c-u> <esc>viwu<esc>wi

" edit & source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" go back to mormal mode
inoremap jk <esc>
inoremap <esc> <nop>
" end of custom mappings


" abbreviations
iabbrev hbangperl #!/usr/bin/env perl
iabbrev hbagnperl #!/usr/bin/env perl
iabbrev hbnagperl #!/usr/bin/env perl
iabbrev waht what
iabbrev tehn then
iabbrev functoin function
iabbrev functon function
iabbrev funtcion function
iabbrev retrun return
iabbrev retunr return
" end of abbreviations

" autocommands
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

augroup filetype_perl
    autocmd!
    autocmd FileType perl nnoremap <buffer> <localleader>c I# <esc>
    autocmd FileType perl :iabbrev <buffer> iff if ()<left>
augroup END

augroup filetype_html
    autocmd!
    autocmd BufNewFIle,BufRead *.html setlocal nowrap
augroup END

autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
" end of autocommands
