# ccache


# 설치

	if [ "$PATH_ORI" == "" ] ; then
		export PATH_ORI=$PATH
	fi

	export PATH=/usr/lib/ccache:$PATH_ORI

