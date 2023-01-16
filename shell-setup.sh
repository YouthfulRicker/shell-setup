#!/bin/bash

# mosh install
sudo apt install mosh -y

# tmux install
sudo apt install tmux -y

# zsh install
sudo apt install zsh -y
chsh -s $(which zsh) $(whoami)

# starship install
curl -sS https://starship.rs/install.sh | sh
cp zshrc ~/zshrc
mv ~/zshrc ~/.zshrc

# 'Hack' nerd font install
sudo mkdir /usr/share/fonts/truetype/hack
mkdir hackfont
cd hackfont
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
unzip Hack.zip
sudo mv *.ttf /usr/share/fonts/truetype/hack/
rm -rf ../hackfont