#!/bin/bash

# Prereq Install
xcode-select --install
xcodebuild -license accept

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Install
bash zsh/zsh.sh;
bash Brewfile.sh

# Configure
bash symlink.sh
