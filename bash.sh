#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
source ~/.zshrc
brew install composer php mysql redis npm wget postgresql watchman
brew install node@20 --force
brew doctor
brew install --cask visual-studio-code appcleaner httpie slack tableplus microsoft-teams microsoft-word microsoft-powerpoint microsoft-excel transmit Flycut miro dbngin google-chrome spotify android-studio dropbox
composer global require laravel/installer laravel/valet spatie/phpunit-watcher laravel/forge-cli 
brew cleanup 
valet install
cd ~/
rm -rf .zshrc
wget 'https://raw.githubusercontent.com/iglebekk/.zshrc/master/.zshrc'
source ~/.zshrc
cd ~/ && mkdir Code && cd Code && valet park
xcode-select --install
