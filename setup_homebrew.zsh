#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Check if homebrew is already installed or not
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install httpie     # curl replacement
brew install bat        # cat replacement

brew install --cask --no-quarantine google-chrome
brew install --cask --no-quarantine visual-studio-code

brew tap homebrew/cask-versions
brew install --cask --no-quarantine google-chrome-canary