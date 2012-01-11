##### PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/cipriani/scripts
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin

##### MANPATH
export MANPATH=/opt/local/share/man:$MANPATH

##### ENV VARS
export JAVA_HOME=`/usr/libexec/java_home`
export ANT_HOME=/usr/share/ant
export ANT_OPTS="-Xms512m -Xmx512m"
export MAVEN_HOME=/usr/share/maven
export JUNIT_HOME=/usr/share/junit
export PIP_REQUIRE_VIRTUALENV=true # pip now requires a virtualenv to run
export PIP_RESPECT_VIRTUALENV=true # pip respects the current virtualenv in use

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export EC2_URL="https://ec2.sa-east-1.amazonaws.com"

##### BASH OPTIONS
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export EDITOR="mate"

##### RVM BINDING
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

##### BASH completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

##### PROMPT
source ~/.git_completion.sh
PS1='\[\033[1;33m\][\u@\h] \w\[\033[0m\]$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]") [$(~/.rvm/bin/rvm-prompt)]\n\$ '

##### Node version Manager start
. ~/.nvm/nvm.sh

##### ALIASES
alias ls="ls -G"
alias ll="ls -lh"
alias la="ls -ah"
alias ckpair="cat .git/config | grep name"
alias grepa="grep -iRnH"
alias serve="thin -R ~/Dropbox/scripts/static.ru start"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim '
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim --remote-tab'
alias pyenv='virtualenv --python=/usr/local/bin/python --clear --no-site-packages'
