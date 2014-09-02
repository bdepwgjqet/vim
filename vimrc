runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax enable
syntax on
filetype on
set nocp
set backspace=indent,eol,start
set nu
set ai
set smartindent
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" winManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
