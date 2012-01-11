# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

##### BASH OPTIONS
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export EDITOR="vim"

##### PROMPT
source ~/.git_completion.sh
PS1='\[\033[1;33m\][\u@\h] \w\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]") [$(/usr/local/rvm/bin/rvm-prompt)]\n\$ '

##### ALIASES
alias ls="ls -G"
alias ll="ls -lh"
alias la="ls -ah"
alias grepa="grep -iRnH"
alias serve="thin -R ~/projects/dotfiles/scripts/static.ru start"

