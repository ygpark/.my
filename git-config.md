# .gitconfig

`git config --global`은 `~/.gitconfig`파일을 수정하고, 
`git config --system`은 `/etc/gitconfig`를 수정한다.


## .gitconfig 샘플

	[user]
		name = Young-Gi Park
		email = ghostyak@gmail.com

	[core]
		editor = vim

	[color]
		status=auto
		branch=auto
		interactive=auto
		diff=auto

	[alias]
		ci = commit 
		co = checkout
		st = status
		# 커밋 대기목록에서 제외
		unstage = reset HEAD
		# 커밋 되돌리기
		undo=reset --hard

		# 로그를 보기좋게 출력
		lg=log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative

		# 로그를..응?
		lc = log ORIG_HEAD.. --stat --no-merges
		# log를 local 시간으로 출력
		llog = log --date=local
		# pull 이후에 생긴 commit만 출력한다.
		#	git pull
		#	git new
		#	git new origin/master
		new = !sh -c 'git log $1@{1}..$1@{0} "$@"'


		# 바뀐 파일 목록 출력
		changes=diff --name-status -r
		# 바뀐 파일들의 양 출력
		diffstat=diff --stat -r
		sortdiff = !sh -c 'git diff "$@" | grep "^[+-]" | sort --key=1.2 | uniq -u -s1'


		# 해당 함수의 변경사항만 출력한다.
		#	funcdiff <old-rev> <new-rev> <path> <function>
		#	funcdiff HEAD HEAD^ init/main.c start_kernel
		funcdiff = !sh -c \"git show \\\"\\$0:\\$2\\\" | sed -n \\\"/^[^ \\t].*\\$3[ \\t]*(/,/^}/p\\\" > .tmp1 &&\n        git show \\\"\\$1:\\$2\\\" | sed -n \\\"/^[^ \\t].*\\$3[ \\t]*(/,/^}/p\\\" > .tmp2 &&\n        git diff --no-index .tmp1 .tmp2\"


		# 충돌 났을때 보는 용도?
		gitkconflict = !gitk --left-right HEAD...MERGE_HEAD


		# 서버만들기
		#	`git clone git://127.0.0.1/project-name.git` 명령 사용가능
		serve = !git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git

		#하위 디렉토리에 있는 여러 저장소에 대하여 변경사항 검색
		scan="!bash -c \"  find . -name .git | sed -n 's/\\.git//gp' > /tmp/.tmp1 &&\n        cat /tmp/.tmp1 | while read line \n      do echo \\\"Entering directory: \\$line\\\" \n       git --work-tree=\\$line --git-dir=\\$line/.git diff --stat -r\n    echo \\\"Leaving directory: \\$line\\\" \n done \""




