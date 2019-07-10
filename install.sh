#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

zsh --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "zsh didn't install"
	echo "install zsh "
	sudo apt-get install zsh
fi

if [ -f ~/.zshrc ];
then
	echo "backup zsh"
	mkdir -p ~/.my_zsh_history
	mv ~/.zshrc ~/.my_zsh_history/zshrc_bak_$TIME
fi
echo "create zshpacket ~/"
cp .oh-my-zsh ~/ -rf
cp .zshrc ~/.zshrc -f
cp ys.zsh-theme ~/.oh-my-zsh/themes/ys.zsh-theme -f
