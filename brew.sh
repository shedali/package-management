#!/bin/bash
alias brew='/usr/local/bin/brew'
set -e
brew update
brew upgrade
brew cleanup
brew cu -a
brew install $(<~/Dropbox/scripts/packages/brew.txt)
brew cask install $(<~/Dropbox/scripts/packages/cask.txt)

#mas signin shedali@gmail.com, password if required then
mas upgrade
mas install $(awk '{print $1}' ~/Dropbox/scripts/packages/mas.txt) 