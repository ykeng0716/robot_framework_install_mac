#! /bin/bash
echo "==> 1)UnInstall Chrome Driver Start"
brew cask uninstall chromedriver

echo "==> 2)UnInstall Pip Robot Package Start"
pip3 uninstall -r ~/Desktop/mac/requirement.txt -y

echo "==> 3)UnInstall Python3 Start"
brew uninstall python3

