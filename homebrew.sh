#! /bin/sh

brew install $(cat formulae.txt)

brew tap AdoptOpenJDK/openjdk
brew cask install $(cat casks.txt)

npm install -g yarn # can't install yarn from homebrew without pulling the latest, non-LTS, node
npm install -g expo-cli # no homebrew package for expo-cli
