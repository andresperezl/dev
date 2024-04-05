#!/usr/bin/env bash

RELEASE=$(lsb_release -r | awk '{print $2}' | cut -f1 -d'.')

sudo apt update

if [ $RELEASE -lt 23 ]; then
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    sudo pipx ensurepath --global # optional to allow pipx actions with --global argument
else
    sudo apt install pipx
    pipx ensurepath
    sudo pipx ensurepath --global # optional to allow pipx actions with --global argument
fi

