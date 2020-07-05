
#!/bin/bash
DOTFILES="$HOME/Projects/dotfiles"

# Make bin programs executable
chmod +x $DOTFILES/bin/*

ln -sfn $DOTFILES/iterm/.itermocil $HOME/.itermocil;
ln -sfn $DOTFILES/iterm/.teamocil $HOME/.teamocil;
ln -sfn $DOTFILES/.gitconfig $HOME/.gitconfig;
ln -sfn $DOTFILES/zsh/.zshrc $HOME/.zshrc;
ln -sfn $DOTFILES/zsh/.aliases.zsh $HOME/.aliases.zsh;
ln -sfn $DOTFILES/zsh/.fzf.zsh $HOME/.fzf.zsh;
ln -sfn $DOTFILES/ssh-config $HOME/.ssh/config;