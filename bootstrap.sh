#!/bin/bash

sudo apt-get install zsh & \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  & \
sudo chsh -s /usr/bin/zsh & \
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash & \
cp ~/dotfiles/oh-my-zsh/agnoster2.zsh-theme ~/.oh-my-zsh/themes/agnoster2.zsh-theme & \
cp ~/dotfiles/.zshrc ~/.zshrc & \
source ~/.zshrc & \
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/dotfiles/.vimrc ~/.vimrc & \
cp ~/dotfiles/.tmux.conf ~/.tmux.conf

