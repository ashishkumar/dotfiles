# TERMINAL PROMPT
# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput setaf 4)\]\w\[$(tput setaf 2)\]\$(parse_git_branch)\[$(tput sgr0)\] "

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

alias brewd="brew update && brew upgrade --all && brew cleanup && brew doctor"

alias l="ls -aGhl"

# Git
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gco="git checkout"
alias gd="git difftool"
alias gl="git l"
alias gp="git push"
alias gpp="git pull && git push"
alias gs="git s"

# Ruby/Rails
alias bi="bundle install"
alias be="bundle exec"
alias tfdl="tail -f log/development.log"
alias tftl="tail -f log/test.log"

# Laravel
alias pa="php arstisan"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# Search inside all files in current directory
alias f="grep --line-number --recursive --color=always . -e"

# MISC
# ====

# Use up/down arrow keys to search history
# http://furbo.org/2014/09/03/the-terminal/#search-setup
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'