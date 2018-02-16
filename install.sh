#!/bin/bash
#############  Installation de brew  ####################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#############  Installation de wget  ####################
brew install wget
#############  Installation de ZSH  ####################
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
#############  Creation de dossier tmp  ####################
Mkdir tmp
cd tmp
rm *.zip
#############  Installation de iterm2  ####################
wget  https://iterm2.com/downloads/stable/iTerm2-3_1_5.zip
unzip *
mv iTerm.app /Applications/
rm *.zip
#############  Installation de expo xde  ####################
wget https://github.com/expo/xde/releases/download/v2.22.1/xde-2.22.1-mac.zip
unzip *
mv Expo\ XDE.app/ /Applications/
rm *.zip

#############  Installation d'Atom  ####################

wget https://github.com/atom/atom/releases/download/v1.24.0/atom-mac.zip
unzip *
mv Atom* /Applications/
rm *.zip

#############  Installation de docker  ####################
wget https://download.docker.com/mac/stable/Docker.dmg
sudo hdiutil attach *.dmg
cp -r /Volumes/Docker/Docker.app/ /Applications/
sudo hdiutil unmount /Volumes/Docker/
rm *.dmg

#############  Installation de Signal  ####################
wget https://updates.signal.org/desktop/signal-desktop-mac-1.3.0.zip
unzip *.zip
rm *.zip
mv Signal.app /Applications/

#############  Cleanup  ####################

cd ..
rm -rf tmp 
