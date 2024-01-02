set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

let g:python3_host_prog = '~/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog  = '~/.pyenv/versions/neovim2/bin/python'

let g:node_host_prog = '~/.nvm/versions/node/v18.18.0/lib/node_modules/neovim/bin/cli.js'

let g:coc_node_path = '~/.nvm/versions/node/v18.18.0/bin/node'

let g:coc_global_extensions = [
\     'coc-prettier',
\     'coc-markdownlint',
\     'coc-eslint',
\     'coc-json',
\     'coc-tsserver',
\     'coc-sql',
\     'coc-sh',
\     'coc-docker'
\]

source ~/.vim/.vimrc
