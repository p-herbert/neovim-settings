#!/bin/bash

set -evx

PYTHON_2_VERSION=2.7.18
PYTHON_3_VERSION=3.9.18

SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

trap cleanup exit

cleanup() {
  [[ -n "$VIRTUAL_ENV" ]] && pyenv deactivate
}

python_setup() {
  local PYTHON_VERSION=$1
  local VIRTUAL_ENVIRONMENT_NAME=$2

  : CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)" pyenv install "${PYTHON_VERSION}"

  : pyenv virtualenv "${PYTHON_VERSION}" "${VIRTUAL_ENVIRONMENT_NAME}"

  pyenv activate "${VIRTUAL_ENVIRONMENT_NAME}"

  pip install neovim pynvim

  pyenv deactivate
}

# Create required directory
mkdir -p "$SCRIPT_DIR/pack/plugins/start" "$HOME/.config/nvim"

# Setup submodules
git submodule init

git submodule update

# Link files
ln -sf "${SCRIPT_DIR}/init.vim" "$HOME/.config/nvim/init.vim"
ln -sf "${SCRIPT_DIR}/pack" "$HOME/.config/nvim"
ln -sf "${SCRIPT_DIR}/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"

eval "$(pyenv init -)"

# Set python environments
python_setup "${PYTHON_2_VERSION}" neovim2
python_setup "${PYTHON_3_VERSION}" neovim3
