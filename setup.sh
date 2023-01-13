#! /bin/bash
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Now from inside vim you need to run the command below
# :PluginInstall

# To add the tmux functionality do the following:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Reload TMUX env so TPM is sourced
# tmux source ~/.tmux.conf
# Now from inside a TMUX session press prefix + I to fetch the plugins
