#!/bin/sh

command -v brew > /dev/null || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


#update homebrew
brew update

#upgrade anything already installed
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

brew install bash bash-completion

grep -q `brew --prefix`/bin/bash /private/etc/shells || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash
chsh -s /usr/local/bin/bash  -u ${USER} root



brew install curl fdupes git icdiff jq lbzip2 maven mongodb multitail mysql node unrar wget xmlstarlet z


brew install caskroom/cask/brew-cask
brew cask install caffeine cd-to chromecast disk-inventory-x google-chrome google-drive google-hangouts gimp inkscape
                  intellij-idea lastpass mysqlworkbench skype sublime-text virtualbox vlc

brew cleanup
brew cask cleanup


ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
