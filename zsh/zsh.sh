#!/bin/bash

# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh dotfiles
cp zsh/.zshrc $HOME/
cp zsh/.aliases.zsh $HOME/
cp zsh/.fzf.zsh $HOME/
