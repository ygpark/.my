# Bash-for


# 예제

	MYSQL_PWD=""
	MYSQL_PWD_CONFIRM=""

	for i in {1..3}
	do
		read -s -p "Please input password: " MYSQL_PWD
		echo ""

		read -s -p "Please input password to confirm: " MYSQL_PWD_CONFIRM
		echo ""

		if [ "$MYSQL_PWD" != "$MYSQL_PWD_CONFIRM" ]
		then
			echo "$PROG_NAME: Bad password"
		else
			echo "$PROG_NAME: Good password."
			break;
		fi  
	done

