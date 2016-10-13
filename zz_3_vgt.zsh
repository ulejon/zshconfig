#!/bin/bash

function chvgtpwd() {
	OLD_PWD=${VGT_PWD}
	NEW_PWD=$1
	
	#######################################################
	# Update APT proxy config file
	#######################################################
	APT=/etc/apt/apt.conf.d/80proxy
	
	if [ ! -f "${APT}" ]; then
		echo "APT proxy file does not exist..exiting"
		return
	fi

	sudo perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${APT}


	#######################################################
	# Update proxy settings for ssh
	#######################################################
	PROXY_AUTH=~/.ssh/proxyauth.txt
	
	if [ ! -f "${PROXY_AUTH}" ]; then
		echo "SSH proxy auth file does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${PROXY_AUTH}

	#######################################################
	# Update proxy settings for maven
	#######################################################
	M2_SETTINGS=~/.m2/settings.xml
	
	if [ ! -f "${M2_SETTINGS}" ]; then
		echo "Maven settings file does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${M2_SETTINGS}

	#######################################################
	# Update proxy settings for gradle
	#######################################################
	GRADLE_SETTINGS=~/.gradle/gradle.properties
	
	if [ ! -f "${GRADLE_SETTINGS}" ]; then
		echo "Gradle settings file does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${GRADLE_SETTINGS}
	

	#######################################################
	# Update actual password in the vgt password file
	#######################################################
	PWD_FILE=~/.vgt_pwd
	
	if [ ! -f "${PWD_FILE}" ]; then
		echo "Password file does not exist..exiting"
		return
	fi

	perl -pi -e "s/${OLD_PWD}/${NEW_PWD}/g" ${PWD_FILE}	

	
	#######################################################
	# Update ubuntu proxy settings
	#######################################################
	gsettings set org.gnome.system.proxy.http host http://a227645:${NEW_PWD}@httppxgot.srv.volvo.com
	gsettings set org.gnome.system.proxy.https host http://a227645:${NEW_PWD}@httppxgot.srv.volvo.com


	######################################################
	# Source the new changes
	#######################################################
	source ~/.zshrc

	echo "All done! Dont forget to update proxy settings in Intellij!"
}

