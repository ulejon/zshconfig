#!/bin/bash

function chvgtpwd() {
	OLD_PWD=${VGT_PWD}
	NEW_PWD=$1
	
	APT=/etc/apt/apt.conf.d/80proxy
	
	if [ ! -f "${APT}" ]; then
		echo "APT proxy file does not exist..exiting"
		return
	fi

	sudo perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${APT}


	PROXY_AUTH=~/.ssh/proxyauth.txt
	
	if [ ! -f "${PROXY_AUTH}" ]; then
		echo "SSH proxy auth file does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${PROXY_AUTH}
	

	CONF_FILE=~/repos/zshconfig/zz_2_vgt.zsh
	
	if [ ! -f "${CONF_FILE}" ]; then
		echo "Config file for env variable does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${CONF_FILE}	



	source ~/.zshrc
}

