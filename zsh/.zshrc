
source $HOME/Projects/Dotfiles/zsh/.exports.zsh
source $HOME/Projects/Dotfiles/zsh/.aliases.zsh
# source $HOME/.aliases

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
source "${HOME}/.iterm2_shell_integration.zsh"

iterm2_print_user_vars() {
	#iterm2_set_user_var nodeVersion $(node -v)
	#KUBECONTEXT=$(CTX=$(kubectl config current-context) 2> /dev/null;if [ $? -eq 0 ]; then echo $CTX;fi)
	#iterm2_set_user_var kubeContext $KUBECONTEXT
	#iterm2_set_user_var awsProfile $AWS_PROFILE
}

# https://www.cloudar.be/awsblog/using-aws-vault-with-mulitple-browser-windows/
function aws-console() {
  user_data_dir=$(mktemp -d /tmp/awschrome_userdata.XXXXXXXX)
  disk_cache_dir=$(mktemp -d /tmp/awschrome_cache.XXXXXXXX)

  browser='/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'
  url=$(aws-vault login ${AWS_VAULT} --duration=12h --stdout --prompt osascript)

  "${browser}" \
    --no-first-run \
    --no-default-browser-check \
    --user-data-dir=${user_data_dir} \
    --disk-cache-dir=${disk_cache_dir} \
    --new-window \
    "${url}" \
    >/dev/null 2>&1 &
  disown
}

function aws-account() {
  profile="$1"
  aws-vault exec ${profile} --no-session
}

function vscodetmp () {
  local repo=$1
  [[ ! $repo =~ "https://*" ]] && repo="https://github.com/${repo}"
  local temp="$(mktemp -d)"
  echo "git@github.com:${repo}"
  git clone --depth=1 "git@github.com:${repo}" "${temp}"
  code --wait -n "${temp}"
  rm -rf "${temp}"
}

function run-migrations () {

}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

. /usr/local/opt/asdf/asdf.sh
