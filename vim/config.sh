#!/bin/bash

set -x

# install vim
lsb_release -a
if [ $? -ne 0 ]; then
    yum install vim
else
    apt-get install vim
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle

# pathogen
cp pathogen/plugin/pathogen.vim ~/.vim/autoload/pathogen.vim

# NerdTree
git clone git@github.com:scrooloose/nerdtree.git nerdtree
cp -r nerdtree ~/.vim/bundle/nerdtree

# MiniBufExplorer
cp -r minibufexplorer ~/.vim/bundle/minibufexplorer

cp -f .vimrc ~/.vimrc
