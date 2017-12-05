#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git bash hub imagemagick@6 mas node postgresql puma/puma/puma-dev tree youtube-dl ffmpeg

rbenv install 2.4.2
rbenv global 2.4.2

sudo puma-dev -setup
puma-dev -install

brew services start postgresql
