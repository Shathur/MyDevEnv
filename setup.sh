#! /bin/bash

# first install some necessary packages
sudo apt-get install libhdf5-dev -y &&
sudo apt-get install gcc-aarch64-linux-gnu -y

cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

# Github removed the original Vundle repo without any explanation
# Here we are using a fork instead
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Stratus3D/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Now from inside vim you need to run the command below
# :PluginInstall

# To add the tmux functionality do the following:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Reload TMUX env so TPM is sourced
# tmux source ~/.tmux.conf
# Now from inside a TMUX session press prefix + I to fetch the plugins
