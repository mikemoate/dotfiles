#! /bin/sh

rcup -v

if $(command -v brew > /dev/null 2>&1); then
    sh ./homebrew.sh
fi