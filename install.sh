#!/bin/bash

sudo apt-get clean
sudo apt-get update
sudo apt-get install bison -y
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

gvm install go1.5 --prefer-binary && gvm use go1.5 && go install -a -race std && go get -u github.com/tools/godep
gvm use go1.5 --default
