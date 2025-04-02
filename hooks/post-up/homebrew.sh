#! /bin/sh

command -v brew > /dev/null 2>&1 || exit 0

brew install $(cat ~/.dotfiles/tag-homebrew/formulae.txt)
brew link --force --overwrite go@1.22

brew install --cask $(cat ~/.dotfiles/tag-homebrew/casks.txt)

fnm install 18
yarn global add expo

