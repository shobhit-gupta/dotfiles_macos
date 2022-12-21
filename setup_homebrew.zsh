#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install httpie     # curl replacement
brew install bat        # cat replacement

brew install --cask google-chrome
brew install --cask visual-studio-code

brew tap homebrew/cask-versions
brew install --cask google-chrome-canary