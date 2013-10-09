# git

## Tracking 브랜치 만들기


Tracking 브랜치를 설정하는 방법은 3가지가 있다.

첫 번째는 `git push -u <remotename> <branchname>`이다. 이 명령은 저장소를 처음 만들때 주로 사용한다.

	git push -u origin master

두 번째는 `git branch --track <branchname> <remotename/branchname>`명령이다.

	git branch --track master origin/master
	
세 번째는 `git branch --set-upstream <branchname> <remotename/branchname>`명령이다.
처음엔 `--set-upstream`명령만 있었는데 `--track`과 `--no-track`옵션이 추가되었다.

	git branch --set-upstream master origin/master




## Tracking 브랜치 해제하기

Tracking을 해제하는 방법은 `git branch --no-track <branchname>`명령이다.

	git branch --no-track master



## Tracking 브랜치 확인하기

	git branch -vv
