#!/bin/bash

clear
sudo apt-get update -y >/dev/null 2>&1
sudo apt-get install git -y >/dev/null 2>&1
sudo apt-get install zsh -y >/dev/null 2>&1
sudo apt-get install neofetch -y >/dev/null 2>&1


echo "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/zsh-ayoub.git  \
    $HOME/zsh-Ayoub >/dev/null 2>&1

sh $HOME/zsh-Ayoub/zsh.sh



sudo rm -r $HOME/.zshrc  >/dev/null 2>&1
sudo rm -r $HOME/.alias  >/dev/null 2>&1

cp $HOME/zsh-Ayoub/.zshrc   $HOME/.zshrc  >/dev/null 2>&1
cp $HOME/zsh-Ayoub/.alias   $HOME/.alias  >/dev/null 2>&1
exec zsh 
exec neofetch
echo  "\n\n END"
