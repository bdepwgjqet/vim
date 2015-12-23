"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'taglist.vim'
Plugin 'vim-scripts/Visual-Mark'
Plugin 'plasticboy/vim-markdown'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"syntax
syntax on
syntax enable

"line number
set nu

"auto indent
set ai

set ruler

"c
set ci
set nocp
set backspace=indent,eol,start

set smartindent

"set tab with 4 space
set tabstop=4

"set indent with 4 space
set shiftwidth=4

"set back with 4 space
set softtabstop=4

"replace tab with 4 space
set expandtab

"vim inner encode
set encoding=utf-8

"vim for terminal encode
set termencoding=utf-8

"vim for file encode
set fileencoding=utf-8

"use the following code try to decode one by one
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" xml
au FileType xml exe ":silent %!xmllint --encode utf-8 --format --recover - 2>/dev/null"
" json
au FileType json exe ":%!python3 -m json.tool"

set completeopt=longest,menu

" ctags
set tags=/home/bdep__/code/acmt/tags

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" winManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
cs add /home/bdep__/code/acmt/cscope.out /home/bdep__/code/acmt
