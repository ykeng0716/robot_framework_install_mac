#! /bin/bash
echo "==> 1) Brew install Start"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "==> 2) Brew Update Start"
brew update

echo "==> 3) Install Python3 Start"
brew install python3

echo "==> 4) Install Pip Start"
python3 get-pip.py

echo "==> 5)Install Pip Robot Package Start"
pip3 install -r ~/Desktop/mac/requirement.txt

echo "==> 6)Install Chrome Driver Start"
brew cask install chromedriver

