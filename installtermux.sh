#!/bin/bash

c='\033[1;36m'
y='\033[1;33m'
p='\033[1;35m'
RE='\033[0m'
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
transparent="\e[0m"

unset LD_PRELOAD
DIR=$HOME/AndroidRansome
DI=/data/data/com.termux/files/home
null="> /dev/null 2>&1"

function check_root() {
if [ -e .suroot ]; then
	echo -e $G"Success!"$transparent
	sleep 3
else
	echo -e $r"[!]requires root access!!"
 echo -e $r"[!]Use tsu"
	sleep 3
exit
fi
}
clear
cp -R $DI/AndroidRansome $DIR
cp /system/framework/framework-res.apk $DI/AndroidRansome/1.apk
echo
echo -e $y" [*] Setting Up Program ..."$c
echo
tar -xf .data/jav.tar.gz -C $PREFIX/share 
chmod +x $PREFIX/share/bin/*
mv $PREFIX/share/bin/* $PREFIX/bin
chmod +x .data/apktool
chmod +x .data/signapk
chmod 777 .data/binaries/bin/keytool
rm .data/jav.tar.gz > /dev/null 2>&1
if [ -L $PREFIX/bin/apktool ]; then
rm $PREFIX/bin/apktool
fi

ln -s $DIR/.data/apktool $PREFIX/bin/

echo -e $r"Import Framework "$transparent
sh .data/apktool if $DI/AndroidRansome/1.apk
echo
echo -e $g" [*] DONE!"
sleep 1
echo -e $b">"$w" use command "$g"python3 tehAndroidRansome.py"$w" for start the console"
check_root
echo

