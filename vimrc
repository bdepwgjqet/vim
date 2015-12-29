"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bdep's vimrc
" use :help first
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" global var
let g:vroot=expand('<sfile>:p:h')
let g:runcom=g:vroot . "/runcom"
let g:utils=g:vroot . "/utils"
let g:template=g:vroot . "/template"

" source vim run commands
for f in split(glob(g:runcom . "/**/*.vimrc"))
    exec 'source' resolve(f)
endfor

" template
au BufNewFile * :silent! exec ":0r ".g:template."/".&ft
