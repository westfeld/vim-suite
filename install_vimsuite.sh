#!/bin/sh

# Script to install the vimsuite on POSIX-based systems

# create symlinks to config file
ln -s ${HOME}/.vim/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.vim/gvimrc ${HOME}/.gvimrc

# initialize submodules
cd ${HOME}/.vim
git submodule init
git submodule update
echo "Vim suite installation finished!"

