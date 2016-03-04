# ENCODING
export LANG=en_US.UTF-8

# TERMINAL PROMPT
# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

rbenv_version() {
  if test "${PWD##/Users/Ashish/Developer}" != "${PWD}"
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

alias brewd="brew update && brew upgrade --all && brew cleanup && brew doctor"
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias reload="source ~/.bash_profile"
alias dev="cd ~/Developer/"

# UNIX Helpers
alias f="grep --line-number --recursive --color=always . -e"
alias l="ls -aGhl"
alias t="tree -Cph --du"

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
alias be="bundle exec"
alias bi="bundle install"
alias r="rails"
alias tfdl="tail -f log/development.log"
alias tftl="tail -f log/test.log"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# PostgreSQL
alias pgs="postgres -D /usr/local/var/postgres"

# Eet.nu Directories
alias eet="cd ~/Developer/eet.nu"
alias backend="cd ~/Developer/eet.nu/backend"
alias butler="cd ~/Developer/eet.nu/butler"
alias design="cd ~/Developer/eet.nu/design"
alias gelato="cd ~/Developer/eet.nu/gelato"
alias guide="cd ~/Developer/eet.nu/guide"
alias thai="cd ~/Developer/eet.nu/thai"

# FUNCTIONS
# =========
function scaffold {
  mkdir -p $1/assets/{css,js,img,fonts}
  touch $1/index.html
  touch $1/assets/style.css
  touch $1/assets/scripts.js
}

# MISC
# ====

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
