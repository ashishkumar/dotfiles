# TERMINAL PROMPT
# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput setaf 6)\]\w\[$(tput setaf 2)\]\$(parse_git_branch)\[$(tput sgr0)\] "

# SET PATH
# ========

# Homebrew
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

# PHP Composer
export PATH=$PATH:$HOME/.composer/vendor/bin

# rbenv setup
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# GitHub hub
eval "$(hub alias -s)"

# ALIASES
# =======

alias brewd="brew update && brew upgrade && brew cleanup && brew doctor"

alias l="ls -aGhl"

# Git
alias gc="git c"
alias gco="git co"
alias gd="git d"
alias gl="git l"
alias gs="git s"

# Ruby/Rails
alias bi="bundle install"
alias be="bundle exec"

# Locations
alias b="cd ~/Developer/backend"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# Search inside all files in current directory
alias f="grep --line-number --recursive --color=always . -e"
