function seLejon_loadCommonn {
	for file in $ZSH_CUSTOM/common/*.zsh; do 
		source $file; 
	done
}

function seLejon_loadOsSpecific { 
	value=$(uname)
	for file in $ZSH_CUSTOM/osspecific/$value/*.zsh; do 
		source $file;
	done
}

function seLejon_loadComputerSpecific {
	value=$(<~/.computer_id)
	if [ -d "$ZSH_CUSTOM/computerspecific/$value" ]; then
    	for file in $ZSH_CUSTOM/computerspecific/$value/*.zsh; do 
			echo $file;
			source $file; 
		done	
	fi	
}

seLejon_loadCommonn
seLejon_loadOsSpecific
seLejon_loadComputerSpecific