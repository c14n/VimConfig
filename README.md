# VIM Configuration

## Installation

### Automatic

Download and run the installer shell script. This creates a backup of your old
vim configuration and downloads this repository and vundle.

    curl https://raw.githubusercontent.com/c14n/VimConfig/master/install.sh | bash

### Manual

Clone this repository and vundle:

    git clone https://github.com/c14n/VimConfig.git "$HOME/.vim"
    git clone https://github.com/gmarik/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"

Then start vim and run :BundleInstall.

## Updating

Call the `update.sh` shell script from `$HOME/.vim` to update both the
repository and the bundles.
