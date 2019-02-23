#!/bin/bash

echo "Updating system"
#sudo apt-get -y install 1> /dev/null

echo "Installing latest version of Vim"
#sudo apt-get -y install vim 1> /dev/null

echo "Installing latest version of cURL"
#sudo apt-get -y install curl 1> /dev/null

echo "Copying .vimrc"
cp .vimrc ~/

echo "Installing Pathogen plugin manager"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 1> /dev/null

echo "Installing plugins"
echo "ack.vim"
sudo apt-get -y install ack-grep 1> /dev/null
git clone --quiet https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim 

echo "auto-pairs"
git clone --quiet git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

echo "indentLine"
git clone --quiet https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine 

echo "fzf"
git clone --quiet --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install 1> /dev/null
source ~/.bashrc
git clone --quiet https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim 

echo "ranger"
sudo apt-get -y install ranger 1> /dev/null
git clone --quiet https://github.com/francoiscabrol/ranger.vim.git ~/.vim/bundle/ranger.vim

echo "vim-airline"
git clone --quiet https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline

echo "vim-airline-clock"
git clone --quiet https://github.com/enricobacis/vim-airline-clock.git ~/.vim/bundle/vim-airline-clock

echo "vim-airline-themes"
git clone --quiet https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes

echo "vim-colors-solarized"
git clone --quiet git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

echo "vim-commentary"
git clone --quiet https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

echo "vim-endwise"
git clone --quiet https://github.com/tpope/vim-endwise.git ~/.vim/bundle/vim-endwise

echo "vim-eunuch"
git clone --quiet https://github.com/tpope/vim-eunuch.git ~/.vim/bundle/vim-eunuch

echo "vim-fugitive"
git clone --quiet https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

echo "vim-gitgutter"
git clone --quiet https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

echo "vim-mix-format"
git clone --quiet https://github.com/mhinz/vim-mix-format.git ~/.vim/bundle/vim-mix-format

echo "vim-test"
git clone --quiet https://github.com/janko/vim-test.git ~/.vim/bundle/vim-test
