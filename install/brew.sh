#!/bin/sh
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

brew install bash
brew install bash-completion

grep -q `brew --prefix`/bin/bash /private/etc/shells || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash
chsh -s /usr/local/bin/bash  -u ${USER} root



brew install curl
brew install git
brew install lbzip2
brew install maven
brew install mongodb
brew install mysql
brew install node
brew install unrar
brew install wget
brew install z


brew install caskroom/cask/brew-cask
brew cask install caffeine
brew cask install chromecast
brew cask install disk-inventory-x
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install gimp
brew cask install inkscape
brew cask install intellij-idea
brew cask install lastpass
brew cask install mysqlworkbench
brew cask install skype
brew cask install sublime-text
brew cask install virtualbox
brew cask install vlc

brew cleanup
brew cask cleanup