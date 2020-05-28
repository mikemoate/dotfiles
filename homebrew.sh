#! /bin/sh

brew install $(cat formulae.txt)

# link formulae at specific versions
brew link --force --overwrite go@1.13
brew link --force --overwrite node@12
brew link --force --overwrite terraform@0.11

brew tap AdoptOpenJDK/openjdk
brew cask install $(cat casks.txt)

npm install -g yarn # can't install yarn from homebrew without pulling the latest, non-LTS, node
yarn global add expo-cli # no homebrew package for expo-cli
