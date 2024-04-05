#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    . osx_deps.sh
else
    . linux_deps.sh
fi

pipx install --include-deps ansible

ansible-playbook main.yml

