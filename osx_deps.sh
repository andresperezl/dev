#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install pipx
pipx ensurepath
sudo pipx --global ensurepath 

export PATH=$PATH:$HOME/.local/bin
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/andres.perezleon/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

