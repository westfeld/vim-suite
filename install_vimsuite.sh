#!/bin/sh

# Script to install the vimsuite on POSIX-based systems

VIM_PATH=${HOME}/.vim

# create symlinks to config file
ln -sf ${VIM_PATH}/vimrc ${HOME}/.vimrc
ln -sf ${VIM_PATH}/gvimrc ${HOME}/.gvimrc

# initialize submodules
cd ${VIM_PATH}
git submodule init
git submodule update

# make VIM configuration available for NeoVIM
if command -v nvim >/dev/null 2>&1 ; then
    echo "NeoVIM found on path, installing configuration"
    NVIM_CONFIG_PATH=${HOME}/.config/nvim
    mkdir -p ${NVIM_CONFIG_PATH}
    cat >${NVIM_CONFIG_PATH}/init.vim << EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
EOF
    echo "configuration made available for NeoVIM"
fi;
echo "Vim suite installation finished!"

