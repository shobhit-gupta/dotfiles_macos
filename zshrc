# Set variables
# Syntax highlighting for man pages with bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH options


# Create Aliases
alias ls='ls -lAFh'


# Customize Prompt(s)
PROMPT='
%1~ %L %# '
#export PROMPT=$'\n'$PROMPT     # For robbyrussell theme, insert a newline before each prompt


# Add Locations to $PATH variable



# Write handy functions

mcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}



# Use ZSH plugins




# ...Other surprises


