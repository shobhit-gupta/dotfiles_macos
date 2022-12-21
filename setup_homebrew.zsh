#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Check if homebrew is already installed or not
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Problem: Disabling Mac Gatekeeper for Casks.
# TODO: Keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474


# Install brews & casks mentioned in Brewfile
brew bundle --verbose

# To update brewfile run the following command in `.dotfiles` folder.
# brew bundle dump --force --describe