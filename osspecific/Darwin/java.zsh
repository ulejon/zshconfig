export JAVA_HOME8=/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home
export JAVA_HOME=${JAVA_HOME8}
export JAVA_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled"
export PATH=$PATH:${JAVA_HOME}/bin

export SCALA_HOME=~/tools/scala
export PATH=$PATH:${SCALA_HOME}/bin
