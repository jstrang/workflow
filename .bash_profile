if [ -d /Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home ]; then
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home"
fi
. .bashrc
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Develop
source /usr/local/bin/virtualenvwrapper.sh
