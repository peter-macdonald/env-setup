#!/usr/bin/env zsh

cd $(dirname $0)

# Copy shell startup files
if read -q "choice?Install shell startup files? (.zshrc, .zprofile) [y/n]"; then
    echo
    echo "Installing shell startup files"
    cp .zprofile ~/.zprofile
    cp .zshrc ~/.zshrc
else
    echo
fi

# Install nvm
if read -q "choice?Install NVM? (0.38.0) [y/n]"; then
    echo
    echo "Installing nvm"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
else
    echo
fi

# Install homebrew
if read -q "choice?Install Homebrew? [y/n]"; then
    echo
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo
fi