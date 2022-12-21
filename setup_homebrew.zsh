#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Check if homebrew is already installed or not
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install brews & casks mentioned in Brewfile
brew bundle --verbose