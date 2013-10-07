# gitolite

## git 계정 만들기
	useradd -m -U -r -s /bin/bash -d /srv/git git

	sudo adduser \
	    --system \
	    --shell /bin/bash \
	    --gecos 'git version control' \
	    --group \
	    --disabled-password \
	    --home /srv/git \
	    git
