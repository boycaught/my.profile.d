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
ANDROID_HOME=""
ANT_HOME="/usr/local/ant"
CATALINA_HOME="/usr/local/catalina"
GOROOT="/usr/local/go"
GOPATH="/usr/local/go"
JETTY_HOME=""
JRUBY_HOME=""
MONGODB_HOME=""
MYSQL_PATH=""
NGINX_HOME=""
PYTHON_HOME=""
RUBY_HOME=""
WEBMIN_HOME="/usr/local/webmin"
BOGUS="A whole lot of who cloud?"

CLASSPATH="$CLASSPATH"

PYTHONPATH="$PYTHON_HOME/bin"

PATH="/usr/local/bin:\
~/.meteor:\
/usr/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/subversion/bin:\
$ANDROID_HOME/bin:\
$ANT_HOME/bin:\
$CATALINA_HOME/bin:\
$GOROOT/bin:\
$GOPATH/bin:\
$JETTY_HOME/bin:\
$JRUBY_HOME/bin:\
$MONGODB_HOME/bin:\
$MYSQL_PATH/bin:\
$MY_HOME/bin:\
$NGINX_HOME/sbin:\
$RUBY_HOME/bin:\
$WEBMIN_HOME:\
$PATH"

export ANDROID_HOME
export ANT_HOME
export CATALINA_HOME
export CLASSPATH
export GOROOT
export GOPATH
export HEROKU_HOME
export JAVA_HOME
export JAVA_OPTS
export JDK_HOME
export JETTY_HOME
export JRUBY_HOME
export JYTHONPATH
export MONGODB_HOME
export MYSQL_PATH
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
alias px='ps aue | more'
alias dx='du -k | more'
alias py='python manage.py'
alias customize='source /etc/profile.d/cloud_custom.sh'

## FF X => FIND FILE NAMED X
alias ff="find . -name \!:1 -print"     

## LINE 5 FILE => SHOW LINE 5 OF FILE
alias line="sed -n '\''\!:1 p'\'' \!:2" 

## HISTOGRAM WORDS
alias wordcount='(cat \!* | tr -s '\''  .,;:?\!()[]"'\'' '\''\012'\'' | cat -n | tail -1 | awk '\''print $1'\'')' 

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

#Custom startup_scripts for UNIX-based cloud systems - 6/22/2016
#Updated 6/22/2016

#EOF
