#!/bin/sh

# Run this file from user root, i.e.: ~/ source /etc/profile.d/lag_custom.sh
# Create link to 'custom.sh' 

## USER BASE
USER="/Users/greenla"

## BASE PATH
MY_HOME="$USER/usr/local"

## JAVA PATHS
JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"
JDK_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"

## CUSTOM PATHS
ADOBE_AIR_SDK="$MY_HOME/adobeairsdk"
ANT_HOME="$MY_HOME/ant"
BREW_HOME="/usr/local"
CATALINA_HOME="$MY_HOME/catalina"
CF_HOME="$USER/Applications/ColdFusion10"
CF_ROOT="$CF_HOME/wwwroot/WEB-INF"
EC2_HOME="$MY_HOME/ec2"
EC2_CERT="$EC2_HOME/x509_certificate.pem"
EC2_PRIVATE_KEY="$EC2_HOME/private_key.pem"
EC2_URL="http://ec2.amazonaws.com"
FLEX_SDK="$MY_HOME/flexsdk"
GRADLE_HOME="$MY_HOME/gradle"
GRAILS_HOME="$MY_HOME/grails"
GROOVY_HOME="$MY_HOME/groovy"
JAVA_OPTS="-Xms512m -Xmx2048m -Djava.awt.headless=true"
JETTY_HOME="$MY_HOME/jetty"
JRUBY_HOME="$MY_HOME/jruby"
JYTHON_HOME="$MY_HOME/jython"
M2_HOME="$MY_HOME/maven"
MAVEN_OPTS="-Xms256m -Xmx512m"
MONGODB_HOME="$BREW_HOME/Cellar/mongodb/2.4.3-x86_64"
NGINX_HOME="$BREW_HOME/Cellar/nginx/1.4.1"
PYTHON_HOME="$BREW_HOME/Cellar/python/2.7.3"
RUBY_HOME="$BREW_HOME/Cellar/ruby193/1.9.3-p392"
SUBLIMETEXT="$USER/Applications/Sublime Text 2.app/Contents/SharedSupport"
WEBMIN_HOME="$MY_HOME/webmin"
YUICOMPRESSOR="$MY_HOME/yuicompressor-2.4.7/compress.jar"
BOGUS="A whole lot of who?"

CLASSPATH="$JYTHON_HOME/jython.jar:\
$USER/Applications/ColdFusion10/cfusion/lib/customlib/h2.jar:\
$USER/Applications/ColdFusion10/cfusion/lib/customlib/hsqldb.jar:\
$USER/Applications/ColdFusion10/cfusion/lib/customlib/jtds-1.2.5.jar:\
$USER/Applications/ColdFusion10/cfusion/lib/customlib/mongo-2.7.0.jar:\
$USER/Applications/ColdFusion10/cfusion/lib/customlib/sqlitejdbc-v037-nested.jar:\
$CLASSPATH"

JYTHONPATH="$JYTHON_HOME:$JYTHON_HOME/bin:$JYTHON_HOME/Lib"

PYTHONPATH="$PYTHON_HOME/bin:$PYTHON_HOME/share"

PATH="$HOME/.local/.bin:\
/usr/local/bin:\
/usr/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/subversion/bin:\
$ADOBE_AIR_SDK/bin:\
$ANT_HOME/bin:\
$BREW_HOME/bin:\
$BREW_HOME/share/python:\
$HOME_BREW/opt/ruby193/bin:\
$CATALINA_HOME/bin:\
$CF_HOME/bin:\
$EC2_HOME/bin:\
$FLEX_SDK/bin:\
$GRADLE_HOME/bin:\
$GRAILS_HOME/bin:\
$GROOVY_HOME/bin:\
$JETTY_HOME/bin:\
$JRUBY_HOME/bin:\
$M2_HOME\bin:\
$MONGODB_HOME/bin:\
$MY_HOME/bin:\
$NGINX_HOME/sbin:\
$RUBY_HOME/bin:\
$SUBLIMETEXT/bin:\
$WEBMIN_HOME:\
$PATH"

export ADOBE_AIR_SDK
export ANT_HOME
export BREW_HOME
export CATALINA_HOME
export CF_HOME
export CF_ROOT
export CLASSPATH
export EC2_HOME
export FLEX_SDK
export GRADLE_HOME
export GRAILS_HOME
export GROOVY_HOME
export JAVA_HOME
export JAVA_OPTS
export JDK_HOME
export JETTY_HOME
export JRUBY_HOME
export JYTHON_HOME
export JYTHONPATH
export M2_HOME
export MAVEN_OPTS
export MONGODB_HOME
export NGINX_HOME
export PYTHON_HOME
export PYTHONPATH
export RUBY_HOME
export SUBLIMETEXT
export WEBMIN_HOME
export YUICOMPRESSOR
export BOGUS

export CC=gcc-4.2

export PATH

## MY CORE ALIASES
alias cl='clear'
alias ll='ls -lag | more'
alias px='ps Aue'
alias dx='du -k | more'
alias py='python manage.py'
alias jy='jython manage.py'
alias customize='source /etc/profile.d/lag_custom.sh'

## Shit from Paul Irish (Google webdev guru)
#
# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
#for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
#for file in ~/dotfiles/.{extra,bash_prompt,exports,aliases,functions}; do
#
for file in ~/dotfiles/.{bash_prompt,aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/z/z.sh

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh



#EOF