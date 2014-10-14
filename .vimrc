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
inoremap <c-u> <esc>viwU<esc>i

" edit & source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

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
