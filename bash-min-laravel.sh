#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install composer php@8.1 mysql redis npm
brew doctor
composer global require laravel/installer laravel/valet spatie/phpunit-watcher laravel/forge-cli
valet install
