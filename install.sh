#!/bin/bash

set -evx

PYTHON_2_VERION=2.7.18
PYTHON_3_VERSION=3.9.18

SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

trap cleanup exit

cleanup() {
  [[ -n "$VIRTUAL_ENV" ]] && pyenv deactivate
}

# Create required directory
mkdir -p "$HOME/.config/nvim"

# Link files
ln -sf "${SCRIPT_DIR}/init.vim" "$HOME/.config/nvim/init.vim"
ln -sf "${SCRIPT_DIR}/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"

# Set python environments
: pyenv install "${PYTHON_2_VERION}"
: pyenv install "${PYTHON_3_VERSION}"

pyenv virtualenv "${PYTHON_2_VERION}" neovim2
pyenv virtualenv "${PYTHON_3_VERSION}" neovim3

pyenv activate neovim2
pip install neovim pynvim
pyenv deactivate

pyenv activate neovim3
pip install neovim pynvim
pyenv deactivate