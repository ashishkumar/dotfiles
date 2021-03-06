# ENCODING
export LANG=en_US.UTF-8

# DEFAULT EDITOR
export EDITOR="code --wait"

# TERMINAL PROMPT
# ===============

# Git branch script from http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac
# Custom bash prompt via kirsle.net/wizards/ps1.html
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

# Reset Prompt
# export PS1=""

# Add Current Time
#export PS1=$PS1"\[$(tput setaf 7)\]\D{%T} "

# Current Working Directory
# export PS1=$PS1"\[$(tput setaf 4)\]\w"

# Current Git Branch
# export PS1=$PS1"\[$(tput setaf 2)\]\$(parse_git_branch)"

# Reset Colour
# export PS1=$PS1"\[$(tput sgr0)\] "

# SET PATH
# ========

# Homebrew
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"

# rbenv
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GitHub hub
eval "$(hub alias -s)"

# ALIASES
# =======

alias brewd="brew update && brew upgrade && brew doctor"
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias reload="source ~/.bash_profile"
alias xcode="open -a Xcode"
alias upgrade="brewd; mas upgrade"
alias dockspacer="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock"

# UNIX Helpers
alias f="grep --line-number --ignore-case --recursive --binary-file=without-match --color=always --exclude-dir={log,tmp,node_modules,public} . -e"
alias l="ls -aGhl"
alias t="tree -Cph --du"

# Git
alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
# alias gco="git checkout"
alias gd="git difftool"
alias gl="git log --color --graph --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%cr) %C(bold blue)<%an>'"
alias gp="git push"
alias gpl="git pull --rebase"
alias gs="git status -sb"

# Ruby/Rails
alias be="bundle exec"
alias bi="bundle install"
alias rc="rails console"
alias rcs="rails console --sandbox"
alias tfdl="tail -f log/development.log"
alias tftl="tail -f log/test.log"
alias rlc="bundle exec rake log:clear"

# Python HTTP Server
alias hs="python -m SimpleHTTPServer 3000"

# PHP HTTP Server
alias phps="php -S localhost:3000"

# MISC
# ====

# Speed up Cocoapods
export COCOAPODS_DISABLE_STATS=1

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Use up/down arrow keys to search history
# http://furbo.org/2014/09/03/the-terminal/#search-setup
# bind '"\e[A":history-search-backward'
# bind '"\e[B":history-search-forward'

# Unlimited Bash History
# http://superuser.com/questions/137438/how-to-unlimited-bash-shell-history
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[%F %T] "
