#!/bin/sh

sudo apt update && sudo apt upgrade
sudo apt install zsh
sudo apt install vim
curl "https://raw.githubusercontent.com/chameleon-lizard/Server_setup/master/.vimrc" > vimrc
sudo apt autoremove
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
cd .oh-my-zsh/themes/
curl "https://raw.githubusercontent.com/chameleon-lizard/autorice/master/configs/nox-modded.zsh-theme" > nox-modded.zsh-theme
cd ~
curl "https://raw.githubusercontent.com/chameleon-lizard/Server_setup/master/.zshrc" > .zshrc
