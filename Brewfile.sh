#!/bin/bash

brew install python;
brew install python3;
brew install vim;
brew install htop;
brew install fzf;
brew install node;
brew install zsh;
brew install wget;
brew install watch;
brew install nmap;
brew install mas;
brew install awscli;
brew install TomAnthony/brews/itermocil
brew install kubectl;
brew install terraform;
brew install tree;
brew install ansible;
brew install exa;
brew install cloc;
brew install yarn;
brew install hugo;

#node-versioning
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.1/install.sh | bash;
npm install -g avn avn-nvm avn-n
avn setup

#npm
npm install -g expo-cli;
npm install -g less;
npm install -g uglifycss;

# Taps
brew tap adoptopenjdk/openjdk;

# Browsers
brew cask install google-chrome;

# Code
brew cask install visual-studio-code;
brew cask install iterm2;
brew cask install docker;
brew cask install adoptopenjdk14;
brew cask install insomnia;
brew cask install aws-vault;

# Apps
brew cask install slack;
brew cask install spotify;
brew cask install mactex;
brew cask install dropbox;
brew cask install 1password;
brew cask install 1password-cli;
brew cask install the-unarchiver;
brew cask install slack;
brew cask install alfred;
brew cask install intellij-idea-ce;
brew cask install lens;
brew cask install discord;
brew cask install cold-turkey-blocker;

# Install apps via mas-cli
# mas signin bjerre@gmail.com

## Required
mas install 497799835 # Xcode
mas install 904280696 # Things 3
mas install 990588172 # Gesturer
mas install 441258766 # Magnet
mas install 409203825 # Numbers
