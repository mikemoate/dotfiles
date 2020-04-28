# Add colors to Terminal for OneDark theme
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Add homebrew sbin to path
export PATH="/usr/local/sbin:$PATH"

# Enable bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Make 'thefuck' more SFW
eval $(thefuck --alias crap)

# Env vars for Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Bash completion for Countingup makefiles
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' .build-toolkit/service.mk | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

alias flush-dns='sudo killall -HUP mDNSResponder'
alias ecr-login='aws ecr get-authorization-token --profile production_dev --output text --query 'authorizationData[].authorizationToken' | base64 -D | cut -d: -f2 | docker login -u AWS --password-stdin https://962837472839.dkr.ecr.eu-west-2.amazonaws.com'
alias ll='ls -l'
alias docker-time='docker run --rm --privileged alpine hwclock -s'
alias wget='curl -O'

# Git aware prompt, with emoji!
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\h:\W $(if [[ $USER == mikemoate ]]; then echo "🤖 "; fi)$(__git_ps1 "(%s)") \$ '
