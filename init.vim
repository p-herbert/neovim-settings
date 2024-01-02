set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

let g:python3_host_prog = '~/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog  = '~/.pyenv/versions/neovim2/bin/python'

let g:coc_node_path = '~/.nvm/versions/node/v18.18.0/bin/node'

let g:coc_global_extensions = [
\     'coc-prettier',
\     'coc-markdownlint',
\     'coc-eslint',
\     'coc-json',
\     'coc-tsserver',
\     'coc-sql',
\     'coc-sh',
\     'coc-docker',
\     'coc-sumneko-lua'
\]

let g:node_host_prop = '~/.nvm/versions/node/v18.18.0/bin/node'

source ~/.vim/.vimrc

lua require("dapui").setup()
lua require("ibl").setup()

noremap <F6> <Cmd>lua require("dapui").toggle()<CR>
