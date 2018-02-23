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
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias flushdns='sudo killall -HUP mDNSResponder'
alias ecrlogin='$(aws ecr get-login --no-include-email --region eu-west-2 --profile production_dev)'
