#!/bin/bash

sudo apt install zsh
CHSH $(which zsh)
curl -sS https://starship.rs/install.sh | sh
cp zshrc ~/zshrc
mv ~/zshrc ~/.zshrc