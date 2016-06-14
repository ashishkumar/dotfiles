# ENCODING
export LANG=en_US.UTF-8

# TERMINAL PROMPT
# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

rbenv_version() {
  if test "${PWD##~/developer}" != "${PWD}"
  then
    echo | rbenv version | sed -e 's/ .*//'
  fi
}

export PS1="\[$(tput setaf 4)\]\w\[$(tput setaf 5)\] \$(rbenv_version)\[$(tput setaf 2)\]\$(parse_git_branch)\[$(tput sgr0)\] "

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

alias brewd="brew update && brew upgrade && brew cleanup && brew doctor"
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias reload="source ~/.bash_profile"

# UNIX Helpers
alias f="grep --line-number --recursive --binary-file=without-match --color=always . -e"
alias l="ls -aGhl"
alias t="tree -Cph --du"

# Git
alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
alias gco="git checkout"
alias gd="git difftool"
alias gl="git l"
alias gp="git push"
alias gpl="git pull"
alias gs="git s"

# Ruby/Rails
alias be="bundle exec"
alias bi="bundle install"
alias rc="bundle exec rails c"
alias rcs="bundle exec rails c -s"
alias tfdl="tail -f log/development.log"
alias tftl="tail -f log/test.log"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# MISC
# ====

# Custom Pow Domains
export POW_EXT_DOMAINS=io

# Timing Terminal Support
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "

# Speed up Cocoapods
export COCOAPODS_DISABLE_STATS=1

# Use up/down arrow keys to search history
# http://furbo.org/2014/09/03/the-terminal/#search-setup
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Unlimited Bash History
# http://superuser.com/questions/137438/how-to-unlimited-bash-shell-history
HISTSIZE=
HISTFILESIZE=

