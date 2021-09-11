#!/usr/bin/env bash

# Script for setting up new OSX machine

# Creating Developer folder
echo "Creating folders"
mkdir Users/nico/Developer

# XCode Command Line tools
echo "Xcode Command Line Tools"
xcode-select --install

echo "Please install xcode command line tools"
read -p "Press [Enter] key after this..."

# Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew"
    brew update
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update


brew tap caskroom/versions
brew install java8

# Brew Packages
echo "Brew Packages"
brew install mas
brew install mackup

brew install git
brew install git-flow

# Zsh
echo "Zsh"
brew install zsh

echo "Oh My Zsh" 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Cask Packages"
brew install appcleaner
brew install atext
brew install bettertouchtool
brew install dropbox
brew install google-chrome
brew install spotify

brew install iterm2
brew install miniconda
brew install sublime-text
brew install pycharm
brew install sourcetree
brew install intellij-idea-ce
brew install visual-studio-code
brew install docker
brew install microsoft-teams
brew install tesseract
brew install tesseract-lang
brew install zsh
brew install android-studio
brew install azure-data-studio
brew install google-drive-file-stream
brew install microsoft-azure-storage-explorer
brew install postman
brew install virtualbox
brew install virtualbox-extension-pack

# echo "Angular"
npm install -g @angular/cli

echo "Cleaning up brew"
brew cleanup

echo "Mac App Store Apps"

mas install 1402042596 # Adblock
mas install 1160374471 # Pipifier
mas install 937984704 # Amphetamine
mas install 585829637 # Todoist
mas install 1091189122 # Bear
mas install 803453959 # Slack
mas install 425424353 # The Unarchiver
mas install 462062816 # Microsoft PowerPoint
mas install 462058435 # Microsoft Excel
mas install 462054704 # Microsoft Word
mas install 409201541 # Pages
mas install 585829637 # Todoist

echo "Please setup and sync Dropbox, and then run this script again."
read -p "Press [Enter] key after this..."

echo "Restoring setup from Mackup"
mackup restore

echo "Done!"
