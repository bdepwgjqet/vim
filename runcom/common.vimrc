"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" common run commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax
if !exists("g:syntax_on")
    syntax enable
endif

" set scroll binding during split
"set scb

"line number
set nu

"copy indent
set ci

"replace tab with 4 space
set expandtab

set nocp

set ruler

"auto copy indent from current line
set ai

"smart indent like c and other
set smartindent

set backspace=indent,eol,start

set completeopt=longest,menu

"default size
if has("gui_running")
    set lines=60 columns=110
endif

"set color
:color desert

"set tab with 4 space
set tabstop=4

"set indent with 4 space
set shiftwidth=4

"set back with 4 space
set softtabstop=4


"vim inner encode
set encoding=utf-8

"vim for terminal encode
set termencoding=utf-8

"vim for file encode
set fileencoding=utf-8

"use the following code try to decode one by one
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"gui font for windows gvim
if has("win32")
    set guifontwide=NSimSun
endif


" xml
au FileType xml exe ":silent %!xmllint --encode utf-8 --format --recover - 2>/dev/null"
" json
au FileType json exe ":%!python " . g:utils . "/fjson.py"
" html
au FileType html setlocal ts=2 sw=2 sts=2

" taglist
" let Tlist_Show_One_File=1
" let Tlist_Exit_OnlyWindow=1
