#! /bin/sh

# TODO: install rcm on platforms other than MacOS/homebrew
command -v brew > /dev/null 2>&1 && brew install rcm

rcup -v
