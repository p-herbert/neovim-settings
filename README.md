# Neovim

These are my personal Neovim settings.

# Installation

1. Clone the repository

        git clone https://github.com/p-herbert/neovim-settings.git $HOME/.neovim

2. Create the directory

        mkdir -p $HOME/.config/nvim

3. Create a symbolic link

        ln -s $HOME/.neovim/{OS_TYPE}/init.vim $HOME/.config/nvim/init.vim

4. Install [rvm]

        curl -sSL https://get.rvm.io | bash -s stable

5. Install dependencies

        pip install neovim
        pip3 install neovim
        gem install neovim
        npm -g install neovim

# Update

    pip install --upgrade pip
    pip install --upgrade --user neovim
    pip3 install --upgrade pip
    pip3 install --upgrade --user neovim
    npm -g upgrade neovim

[rvm]: https://github.com/rvm/rvm
