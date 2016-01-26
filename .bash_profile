# ENCODING
export LANG=en_US.UTF-8

# TERMINAL PROMPT
# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# RUBY VERSION
rbenv_version() {
  rbenv version | sed -e 's/ .*//'
}

print_rbenv_version() {
  if test "${PWD##/Users/Ashish/Developer}" != "${PWD}"
  then
    echo | rbenv version | sed -e 's/ .*//'
  fi
}

export PS1="\[$(tput setaf 4)\]\w\[$(tput setaf 5)\] \$(print_rbenv_version)\[$(tput setaf 2)\]\$(parse_git_branch)\[$(tput sgr0)\] "

# SET PATH
# ========

# Homebrew
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# rbenv setup
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# GitHub hub
eval "$(hub alias -s)"

# ALIASES
# =======

alias brewd="brew update && brew upgrade --all && brew cleanup && brew doctor"
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias reload="source ~/.bash_profile"

alias l="ls -aGhl"

# Git
alias g="git"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gac="git commit -am"
alias gco="git checkout"
alias gd="git difftool"
alias gf="git fetch"
alias gl="git l"
alias gp="git push"
alias gpl="git pull"
alias gpp="git pull && git push"
alias gs="git s"

# Ruby/Rails
alias r="rails"
alias bi="bundle install"
alias be="bundle exec"
alias tfdl="tail -f log/development.log"
alias tftl="tail -f log/test.log"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# PostgreSQL
alias pgs="postgres -D /usr/local/var/postgres"

# Search inside all files in current directory
alias f="grep --line-number --recursive --color=always . -e"

# MISC
# ====

# Use up/down arrow keys to search history
# http://furbo.org/2014/09/03/the-terminal/#search-setup
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Unlimited Bash History
# http://superuser.com/questions/137438/how-to-unlimited-bash-shell-history
HISTSIZE=
HISTFILESIZE=
