#!/bin/bash
# author: zzq
# warning: 目前脚本不会备份原来配置，请自行备份！

set -x

# install dependency
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

# molokai
mkdir ~/.vim/colors/
git clone git@github.com:tomasr/molokai.git molokai
cp molokai/colors/molokai.vim  ~/.vim/colors/

# you complete me
#git clone git@github.com:Valloric/YouCompleteMe.git YouCompleteMe
#cp -r YouCompleteMe  ~/.vim/bundle/YouCompleteMe
#mkdir ~/.ycm_build
#cd ~/.ycm_build
#cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DEXTERNAL_LIBCLANG_PATH=/usr/lib/x86_64-linux-gnu/libclang-3.9.so . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
#cmake --build . --target ycm_core --config Release
#cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
#cd -

cp -f .vimrc ~/.vimrc
