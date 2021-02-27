#!/bin/bash


clear

echo "\n\n\t "\
     "begin install \n\n"
sudo chown $USER /etc/apt/sources.list
echo "deb http://cz.archive.ubuntu.com/ubuntu hirsute main universe" >> /etc/apt/sources.list
echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" >> /etc/apt/sources.list
echo "deb http://cz.archive.ubuntu.com/ubuntu focal main universe" >> /etc/apt/sources.list
echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe" >> /etc/apt/sources.list

setup(){
sudo apt-get update -y 
sudo apt-get install git -y 
sudo apt-get install zsh -y
sudo apt-get install neofetch
}
setup &

while kill -0 $!; do
    printf '.' > /dev/tty
    sleep 2
done

printf '\n' > /dev/tty


# setup >/dev/null 2>&1
git clone \
    https://github.com/ayoubelmhamdi/zsh-ayoub.git  \
    $HOME/zsh-Ayoub >/dev/null 2>&1

sh $HOME/zsh-Ayoub/zsh.sh



sudo rm -r $HOME/.zshrc  >/dev/null 2>&1
sudo rm -r $HOME/.alias  >/dev/null 2>&1

cp $HOME/zsh-Ayoub/.zshrc   $HOME/.zshrc  >/dev/null 2>&1
cp $HOME/zsh-Ayoub/.alias   $HOME/.alias  >/dev/null 2>&1
zsh 
neofetch
echo  "\n\n END"
