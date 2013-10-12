#!/bin/bash

THIS_IS="$(grep 'source ~/\.gitrc' $HOME/.bashrc | wc -l)"
FIRST_TIME="0"

ln -svf $PWD/_gitconfig ~/.gitconfig
ln -svf $PWD/_githelpme ~/.githelpme
ln -svf $PWD/_gitrc ~/.gitrc

# .bashrc에 추가하기
if [[ $THIS_IS == $FIRST_TIME ]]
then
	echo "" >> ~/.bashrc
	echo "#" >> ~/.bashrc
	echo "# Initialization for Git" >> ~/.bashrc
	echo "#" >> ~/.bashrc
	echo "source ~/.gitrc" >> ~/.bashrc
fi

# 설치 완료 메시지 출력
echo "설치가 완료되었습니다."
echo "정상적인 사용을 위해서 현재 창을 닫고 터미널을 새로 열어주세요."
