#!/bin/bash

xcode-select --install # xcode command line tools

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
bash homebrew/brew.sh;
bash homebrew/brew-cask.sh;

bash zsh/zsh.sh; # Zsh
bash vscode/vscode.sh; # Visual Studio Code

cp git/.gitconfig $HOME/.gitconfig; # git
