# This file
alias aliases="vi ~/.aliases.zsh"

# Files
alias projects="cd ~/Projects"
alias work="cd ~/Projects/good-monday"
alias good-monday="cd ~/Projects/good-monday"
alias backend="cd ~/Projects/good-monday/backend"
alias frontend="cd ~/Projects/good-monday/good-monday"
alias monorepo="cd ~/Projects/good-monday/good-monday"
alias platform="cd ~/Projects/good-monday/platform-v2"
alias backoffice="cd ~/Projects/good-monday/backoffice-vue"
alias dotfiles="cd ~/Projects/dotfiles"
alias infrastructure="cd ~/projects/infrastructure"
alias fit="cd ~/projects/fit"

# Commands
alias run-db="sh ~/projects/good-monday/gm-database/run.sh"
alias run-warehouse-db="sh ~/projects/good-monday/backend/apps/warehouse/run.sh"
alias migrate-db="(cd ~/projects/good-monday/backend && mix ecto.migrate)"
alias migrate-warehouse-db="(cd ~/projects/good-monday/backend && mix ecto.migrate --repo Warehouse.Repo)"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Misc
alias week="date +%V"
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"
alias reload="source ~/.zshrc"
alias llp="ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"
alias erlang-version="erl -eval '{ok, Version} = file:read_file(filename:join([code:root_dir(), \"releases\", erlang:system_info(otp_release), \"OTP_VERSION\"])), io:fwrite(Version), halt().' -noshell"
alias git-now="git commit --amend --date=\"now\""
alias status-code="echo $?"



# Projects
alias snippets="code ~/projects/snippets"

# aws-accounts
alias dev="aws-account dev"
alias staging="aws-account staging"
alias production="aws-account production"
alias gm-production="aws-account gm-production"

# git
alias git-count-commits="git rev-list --count HEAD ^master"
