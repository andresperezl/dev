#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install pipx
pipx ensurepath
sudo pipx ensurepath --global # optional to allow pipx actions with --global argument

export PATH=$PATH:$HOME/.local/bin
