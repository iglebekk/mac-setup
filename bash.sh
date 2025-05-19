#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
source ~/.zshrc
brew install composer php mysql redis npm wget
brew install node@20 --force
brew doctor
brew install --cask visual-studio-code appcleaner httpie slack tableplus microsoft-teams microsoft-word microsoft-powerpoint microsoft-excel transmit Flycut miro dbngin tiles google-chrome spotify
composer global require laravel/installer laravel/valet
brew cleanup 
valet install
cd ~/
rm -rf .zshrc
wget 'https://raw.githubusercontent.com/iglebekk/.zshrc/master/.zshrc'
source ~/.zshrc
cd ~/ && mkdir Code && cd Code && valet park
xcode-select --install
