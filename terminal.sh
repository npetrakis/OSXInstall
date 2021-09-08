#!/usr/bin/env bash

# Oh My Zsh

echo "Zsh"
brew install zsh

echo "Oh My Zsh"

# These things are backuped because of mackup

# install autosuggestions plugin
# https://github.com/zsh-users/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k theme 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# TODO MANUAL
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

chsh -s /bin/zsh

p10k configure