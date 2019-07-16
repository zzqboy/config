#!/bin/bash
# author: zzq
# warning: 目前脚本不会备份原来配置，请自行备份！

set -x

# install dependency
lsb_release -a
if [ $? -ne 0 ]; then
    yum install vim
    yum install ctags
else
    apt-get install vim
    apt-get install ctags
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle

# pathogen
cp pathogen/plugin/pathogen.vim ~/.vim/autoload/pathogen.vim

# NerdTree
git clone git@github.com:scrooloose/nerdtree.git nerdtree
cp -r nerdtree ~/.vim/bundle/nerdtree

# MiniBufExplorer
cp -r minibufexplorer ~/.vim/bundle/minibufexplorer

# molokai
mkdir ~/.vim/colors/
git clone git@github.com:tomasr/molokai.git molokai
cp molokai/colors/molokai.vim  ~/.vim/colors/

# taglist
wget --no-check-certificate "http://www.vim.org/scripts/download_script.php?src_id=19574" -O taglist.zip && unzip taglist.zip -d taglist
cp -r taglist ~/.vim/bundle/taglist


cp -f .vimrc ~/.vimrc
