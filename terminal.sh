#!/usr/bin/env bash

# Oh My Zsh

echo "Zsh"
brew install zsh

echo "Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# These things are backuped because of mackup

# install autosuggestions plugin
# https://github.com/zsh-users/zsh-autosuggestions
# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# install highlighting plugin
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Theme: https://github.com/bhilburn/powerlevel9k