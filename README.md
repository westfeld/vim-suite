# Installation:

    git clone git://github.com/westfeld/vim-suite.git ~/.vim

## Putting everything into place

### The easy way using the installation script

    ~/.vim/install_vimsuite.sh

## Or execute the single steps manually

### Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

### Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
