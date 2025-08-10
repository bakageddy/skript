#!/usr/bin/env sh

eval `ssh-agent`
ssh-add $HOME/.config/ssh/id_ed25519
