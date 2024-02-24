#!/bin/sh

set -e

# Install latest vim & tmux if not installed already
sudo apt install vim tmux -y

# Copy tmux conf
cp .tmux.conf ~/.tmux.conf

# Install Vundle, the vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true

# Copy vimrc
cp .vimrc ~/.vimrc

# Copy color schemes
mkdir -p ~/.vim/colors
cp .vim/colors/* ~/.vim/colors

# Install plugins
vim -c PluginInstall
