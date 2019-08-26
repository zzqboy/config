#!/bin/bash
# author: zzq
# warning: 目前脚本不会备份原来配置，请自行备份！

set -x

# install dependency
lsb_release -a
if [ $? -ne 0 ]; then
    yum install vim
    yum install ctags
    yum install unzip
else
    apt-get install vim
    apt-get install ctags
    apt-get install unzip
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

#omnicppcomplete
mkdir ~/.vim/tags
mkdir ~/.vim/tags/cpp_src
wget --no-check-certificate "http://www.vim.org/scripts/download_script.php?src_id=7722" -O omnicppcomplete.zip && unzip omnicppcomplete.zip -d ~/.vim
wget --no-check-certificate "http://www.vim.org/scripts/download_script.php?src_id=9178" -O cpp_src.tar.bz2 && tar -xjvf cpp_src.tar.bz2
mv cpp_src/* ~/.vim/tags/cpp_src
cd ~/.vim/tags/cpp_src
ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f tags
cd -

#ack
wget http://beyondgrep.com/ack-2.12-single-file
sudo mv ack-2.12-single-file /usr/bin/ack
sudo chmod 0755 /usr/bin/ack
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim

cp -f .vimrc ~/.vimrc
