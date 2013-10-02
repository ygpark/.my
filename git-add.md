# git add

## 선택적으로 add하기

`git add -e <파일명>`를 실행하면 diff가 편집기에 나타난다.
이 중 add할 부분만 남기고 나머지는 지우고 저장한다.
그리고나서 `git diff --cached`명령으로 확인한다.
취소하려면 git reset을 실행

	git add -e <파일명>
	git diff --cached

