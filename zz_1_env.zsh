export SOURCES_ROOT=~/source/skf

. ~/tools/environment/environment.sh 
export PATH=~/tools/bin:$PATH

export EDITOR=subl

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

alias vim=mvim
launchctl setenv PATH $PATH