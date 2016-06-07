#!/bin/sh

## BASE PATHS
HOME="/home/$USER"

MY_HOME="$HOME/usr/local"
MY_DOCS="/opt/$USER"
MY_APPS="/opt/$USER/apps"

## JAVA PATHS
JAVA_HOME=""
JDK_HOME=""
JAVA_OPTS="-Xms512m -Xmx2048m -Djava.awt.headless=true"

## CUSTOM PATHS
ACTIVEMQ_HOME="$MY_HOME/activemq"
ADOBE_AIR_SDK="$MY_HOME/adobeairsdk"
ANDROID_HOME=""
ANT_HOME="$MY_HOME/ant"
CATALINA_HOME="$MY_HOME/catalina"
CF_HOME=""
CF_ROOT=""
GOROOT="$HOME/go"
GOPATH="$HOME/go"
GRADLE_HOME="$MY_HOME/gradle"
GRAILS_HOME="$MY_HOME/grails"
GROOVY_HOME="$MY_HOME/groovy"
HEROKU_HOME="/usr/local/heroku/"
JETTY_HOME=""
JRUBY_HOME=""
MONGODB_HOME=""
NGINX_HOME=""
PYTHON_HOME=""
RUBY_HOME=""
WEBMIN_HOME="$MY_HOME/webmin"
BOGUS="A whole lot of who cloud?"

CLASSPATH="$CLASSPATH"

PYTHONPATH="$PYTHON_HOME/bin"

PATH="/usr/local/bin:\
~/.meteor:\
/usr/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/subversion/bin:\
$ACTIVEMQ_HOME/bin:\
$ADOBE_AIR_SDK/bin:\
$ANDROID_HOME/bin:\
$ANT_HOME/bin:\
$CATALINA_HOME/bin:\
$CF_HOME/bin:\
$GOROOT/bin:\
$GOPATH/bin:\
$GRADLE_HOME/bin:\
$GRAILS_HOME/bin:\
$GROOVY_HOME/bin:\
$HEROKU_HOME/bin:\
$JETTY_HOME/bin:\
$JRUBY_HOME/bin:\
$MONGODB_HOME/bin:\
$MY_HOME/bin:\
$NGINX_HOME/sbin:\
$RUBY_HOME/bin:\
$WEBMIN_HOME:\
$PATH"

export ACTIVEMQ_HOME
export ADOBE_AIR_SDK
export ANDROID_HOME
export ANT_HOME
export CATALINA_HOME
export CF_HOME
export CF_ROOT
export CLASSPATH
export GOROOT
export GOPATH
export GRADLE_HOME
export GRAILS_HOME
export GROOVY_HOME
export HEROKU_HOME
export JAVA_HOME
export JAVA_OPTS
export JDK_HOME
export JETTY_HOME
export JRUBY_HOME
export JYTHONPATH
export MONGODB_HOME
export NGINX_HOME
export PYTHON_HOME
export PYTHONPATH
export RUBY_HOME
export WEBMIN_HOME
export BOGUS

export CC="gcc"

export PATH

## MY ALIASES
alias cl='clear'
alias ll='ls -lag --color | more'
alias px='ps -aux | more'
alias dx='du -k | more'
alias py='python manage.py'
alias customize='source /etc/profile.d/cloud_custom.sh'

## FF X => FIND FILE NAMED X
alias ff="find . -name \!:1 -print"     

## LINE 5 FILE => SHOW LINE 5 OF FILE
alias line="sed -n '\''\!:1 p'\'' \!:2" 

## HISTOGRAM WORDS
alias wordcount='(cat \!* | tr -s '\''  .,;:?\!()[]"'\'' '\''\012'\'' | cat -n | tail -1 | awk '\''print $1'\'')' 

# init z   https://github.com/rupa/z
. $HOME/z/z.sh

# init rvm
# source $HOME/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"


#Custom startup_scripts for UNIX-based cloud systems - 6/6/2016
#EOF
#Updated 6/6/2016

