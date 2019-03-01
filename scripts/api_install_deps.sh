#!/bin/bash
while read -r line || [[-n "$line"]]; do
    if ["$line" = "[system]"]; then
    else
        if ["$line" = "[pip]"]; then
            break
        fi
        sudo pacman -Sy "$line"
    fi
