#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
source ~/.zshrc
brew install composer php@8.1 mysql redis npm wget postgresql
brew doctor
brew install --cask visual-studio-code tiles appcleaner httpie slack tableplus microsoft-teams microsoft-word microsoft-powerpoint microsoft-excel transmit Flycut miro dbngin google-chrome
composer global require laravel/installer laravel/valet spatie/phpunit-watcher laravel/forge-cli
valet install
cd ~/
rm -rf .zshrc
wget 'https://raw.githubusercontent.com/iglebekk/.zshrc/master/.zshrc'
source ~/.zshrc
