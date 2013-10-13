#!/bin/bash
PROGNAME=install.sh
TARGET=$HOME/.vimrc
echo
echo -n "$TARGET을 삭제하시겠습니까? (Y/n)"
read ANSWER
if [[ $ANSWER == "" ]] || [[ $ANSWER == "Y" ]] || [[ $ANSWER == "y" ]]
then
	rm -vf $TARGET
else
	echo "$PROGNAME: 중단됨"
	exit
fi


TARGET=$HOME/.vim
echo
echo -n "$TARGET을 삭제하시겠습니까? (Y/n)"
read ANSWER
if [[ $ANSWER == "" ]] || [[ $ANSWER == "Y" ]] || [[ $ANSWER == "y" ]]
then
	rm -vrf $TARGET
else
	echo "$PROGNAME: 중단됨"
	exit
fi


echo "심볼릭 릭크 생성..."
ln -fv $PWD/_vimrc ~/.vimrc

echo "vundle 다운로드중..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "vundle 설치중..."
vi -c :BundleInstall -c :qa
