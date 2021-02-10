# This file
alias aliases="vi ~/.aliases.zsh"

# Files
alias projects="cd ~/Projects"
alias dotfiles="cd ~/Projects/dotfiles"
alias infrastructure="cd ~/projects/infrastructure"

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

# Projects
alias snippets="code ~/projects/snippets"

# aws-accounts
alias dev="aws-account dev"
alias staging="aws-account staging"
alias production="aws-account production"
alias gm-production="aws-account gm-production"

