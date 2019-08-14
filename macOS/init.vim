" Set runtimepath
set runtimepath^=~/.vim runtimepath+=~/.vim/after

" Set packpath
let &packpath = &runtimepath

" Set python and python3 interpreter
let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Source ~/.vimrc
source ~/.vimrc

