#!/usr/bin/env bash

# Script for setting up new OSX machine

# Creating Developer folder
echo "Creating folders"
mkdir Users/nico/Developer

# XCode Command Line tools
echo "Xcode Command Line Tools"
xcode-select --install

# Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update


brew tap caskroom/versions
brew cask install java8

# Brew Packages
echo "Brew Packages"
brew install mas
brew install mackup

brew install git
brew install git-flow
brew install maven
brew install node
brew install yarn


echo "Cask Packages"
brew cask install appcleaner
brew cask install atext
brew cask install bettertouchtool
brew cask install dropbox
brew cask install evernote
brew cask install google-chrome
brew cask install spotify
brew cask install qlmarkdown
brew cask install qlstephen

brew cask install iterm2
brew cask install miniconda
brew cask install sublime-text
brew cask install pycharm-ce
brew cask install sourcetree
brew cask install intellij-idea-ce
brew cask install visual-studio-code
brew cask install docker

echo "Angular"
npm install -g @angular/cli

echo "Cleaning up brew"
brew cleanup

echo "Mac App Store Apps"
mas install 568494494 # Pocket
mas install 937984704 # Amphetamine
mas install 926036361 # LastPass
mas install 949724400 # MoneyWiz 2
mas install 803453959 # Slack
mas install 425424353 # The Unarchiver
#mas install 462062816 # Microsoft PowerPoint
mas install 462058435 # Microsoft Excel
mas install 1437501971 # eID Connector
mas install 409201541 # Pages

echo "Please setup and sync Dropbox, and then run this script again."
read -p "Press [Enter] key after this..."

echo "Restoring setup from Mackup"
mackup restore

echo "Done!"
