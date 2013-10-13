#!/bin/bash

TARGET="source ~/.my/config/_mybashrc"
THIS_IS=$(grep "$TARGET" $HOME/.bashrc | wc -l)
FIRST_INSTALL="0"

# .bashrc에 추가하기
if [[ $THIS_IS == $FIRST_INSTALL ]]
then
	echo "" >> ~/.bashrc
	echo "#" >> ~/.bashrc
	echo "# mybashrc" >> ~/.bashrc
	echo "#" >> ~/.bashrc
	echo "$TARGET" >> ~/.bashrc
fi

# 설치 완료 메시지 출력
echo "설치가 완료되었습니다."
echo "정상적인 사용을 위해서 현재 창을 닫고 터미널을 새로 열어주세요."
