export VGT_PWD=Lolwag53

export SOURCES_ROOT=~/source/

export PATH=~/tools/bin:$PATH

export EDITOR=subl

export http_proxy=http://a227645:$VGT_PWD@httppxgot.srv.volvo.com:8080
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export FTP_PROXY=$http_proxy
export NO_PROXY=$no_proxy



function essh { ~/.ssh/essh.py "$@" && ~/.ssh/launchssh.sh /tmp/essh-result; }