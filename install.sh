#!/bin/bash
echo "Tout installer ? (y/n)"
read ALL
#############  Installation de brew  ####################
if [ "$ALL" == "y" ];then
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
#############  Installation de wget  ####################
if [ "$ALL" == "y" ];then
#brew install wget
fi

#############  Creation de dossier tmp  ####################
Mkdir tmp
cd tmp
rm *.zip


#############  Installation de ZSH  ####################
if [ "$ALL" == "y" ];then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
fi
#############  Installation de iterm2  ####################
if [ "$ALL" == "y" ];then
  wget  https://iterm2.com/downloads/stable/iTerm2-3_1_5.zip
  unzip *
  mv iTerm.app /Applications/
  rm *.zip
else
echo "Installer iterm2 ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
  wget  https://iterm2.com/downloads/stable/iTerm2-3_1_5.zip
  unzip *
  mv iTerm.app /Applications/
  rm *.zip
  fi
fi


#############  Installation de expo xde  ####################
if [ "$ALL" == "y" ];then
  brew install npm
  wget https://github.com/expo/xde/releases/download/v2.22.1/xde-2.22.1-mac.zip
  unzip *
  mv Expo\ XDE.app/ /Applications/
  rm *.zip
else
echo "Installer expo XDE ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    brew install npm
    wget https://github.com/expo/xde/releases/download/v2.22.1/xde-2.22.1-mac.zip
    unzip *
    mv Expo\ XDE.app/ /Applications/
    rm *.zip
  fi
fi


#############  Installation d'Atom  ####################
if [ "$ALL" == "y" ];then
  wget https://github.com/atom/atom/releases/download/v1.24.0/atom-mac.zip
  unzip *
  mv Atom* /Applications/
  rm *.zip
else
echo "Installer Atom ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    wget https://github.com/atom/atom/releases/download/v1.24.0/atom-mac.zip
    unzip *
    mv Atom* /Applications/
    rm *.zip
  fi
fi


#############  Installation de docker  ####################
if [ "$ALL" == "y" ];then
  wget https://download.docker.com/mac/stable/Docker.dmg
  sudo hdiutil attach *.dmg
  cp -r /Volumes/Docker/Docker.app/ /Applications/
  sudo hdiutil unmount /Volumes/Docker/
  rm *.dmg
else
echo "Installer Docker ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    wget https://download.docker.com/mac/stable/Docker.dmg
    sudo hdiutil attach *.dmg
    cp -r /Volumes/Docker/Docker.app/ /Applications/
    sudo hdiutil unmount /Volumes/Docker/
    rm *.dmg
  fi
fi

#############  Installation de Signal  ####################
if [ "$ALL" == "y" ];then
  wget https://updates.signal.org/desktop/signal-desktop-mac-1.3.0.zip
  unzip *.zip
  rm *.zip
  mv Signal.app /Applications/
else
echo "Installer Signal ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    wget https://updates.signal.org/desktop/signal-desktop-mac-1.3.0.zip
    unzip *.zip
    rm *.zip
    mv Signal.app /Applications/
  fi
fi

#############  Installation de pip  ####################
if [ "$ALL" == "y" ];then
  wget https://bootstrap.pypa.io/get-pip.py
  sudo python get-pip.py
  rm get-pip.py
  #############  pip install  ####################
  sudo pip install virtualenv
  virtualenv ~/venv
else
echo "Installer Pip ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    wget https://bootstrap.pypa.io/get-pip.py
    sudo python get-pip.py
    rm get-pip.py
    #############  pip install  ####################
    sudo pip install virtualenv
    virtualenv ~/venv
  fi
fi



#############  Installation de Spotify -- need user interactions #############
if [ "$ALL" == "y" ];then
  wget https://download.scdn.co/SpotifyInstaller.zip
  unzip *
  $PWD=$(pwd)
  mv Install\ Spotify.app test.app
  open -a $PWD/test.app
else
echo "Installer Spotify ? (y/n)"
read choice
  if [ "$choice" == "y" ] ;then
    wget https://download.scdn.co/SpotifyInstaller.zip
    unzip *
    $PWD=$(pwd)
    mv Install\ Spotify.app test.app
    open -a $PWD/test.app
  fi
fi

#############  Cleanup  ####################
cd ..
rm -rf tmp
