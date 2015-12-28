#!/bin/sh

## get version settings
## updated to v_2015.12.27
source ~/dotfiles/.appversions

## BASE PATHS
HOME="/Users/$USER"

MY_HOME="$HOME/usr/local"
MY_DOCS="$HOME/Documents"
MY_APPS="$HOME/Applications"

## JAVA PATHS
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk$v_JRE.jdk/Contents/Home"
JDK_HOME="/Library/Java/JavaVirtualMachines/jdk$v_JDK.jdk/Contents/Home"
#JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
#JDK_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
JAVA_OPTS="-Xms512m -Xmx2048m -Djava.awt.headless=true"
#JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"
#JDK_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"

## CUSTOM PATHS
ACTIVEMQ_HOME="$MY_HOME/activemq"
ADOBE_AIR_SDK="$MY_HOME/adobeairsdk"
ANDROID_HOME="$MY_HOME/android-sdk-macosx"
ANT_HOME="$MY_HOME/ant"
AWS_CREDENTIALS_FILE="$MY_HOME/aws/aws-credentials"
BREW_HOME="/usr/local"
CATALINA_HOME="$MY_HOME/catalina"
CF_HOME="$HOME/Applications/ColdFusion10/cfusion"
CF_ROOT="$CF_HOME/wwwroot/WEB-INF"
COREUTILS="$BREW_HOME/opt/coreutils/libexec/gnubin"
DROPBOX_HOME="$HOME/Dropbox/code/app"
EC2_HOME="$MY_HOME/ec2"
EC2_CERT="$EC2_HOME/x509_certificate.pem"
EC2_PRIVATE_KEY="$EC2_HOME/private_key.pem"
EC2_URL="http://ec2.amazonaws.com"
FLEX_SDK="$MY_HOME/flexsdk"
GOROOT="$BREW_HOME/Cellar/go/$v_GO"
GOPATH="$HOME/go"
GRADLE_HOME="$BREW_HOME/Cellar/gradle/$v_GRADLE"
GRAILS_HOME="$BREW_HOME/opt/grails/libexec"
GROOVY_HOME="$BREW_HOME/opt/groovy/libexec"
HEROKU_HOME="$BREW_HOME/heroku/"
JETTY_HOME="$MY_HOME/jetty"
JENKINS_HOME="$HOME/Dropbox/code/app/jenkins"
JRUBY_HOME="$BREW_HOME/Cellar/jruby/$v_JRUBY"
JYTHON_HOME="$BREW_HOME/Cellar/jython/$v_JYTHON/libexec"
M2_HOME="$MY_HOME/maven"
MAVEN_OPTS="-Xms256m -Xmx512m"
MYSQL_HOME="$BREW_HOME/Cellar/mysql"
MONGODB_HOME="$BREW_HOME/Cellar/mongodb/$v_MONGODB"
NGINX_HOME="$BREW_HOME/Cellar/nginx/$v_NGINX"
PHANTOMJS="$HOME/.local/bin/phantomjs"
PYTHON_HOME="/System/Library/Frameworks/Python.framework/Versions/Current"
RUBY_HOME="$HOME/.rvm/rubies/ruby-$v_RUBY/bin/ruby"
#RUBY_HOME="$BREW_HOME/Cellar/ruby193/1.9.3-p484"
SUBLIMETEXT="$MY_APPS/Sublime Text 2.app/Contents/SharedSupport"
WEBMIN_HOME="$MY_HOME/webmin"
VISUALVM="$MY_HOME/visualvm"
YUICOMPRESSOR="$MY_HOME/yuicompressor-2.4.7/compress.jar"
BOGUS="A whole lot of who?"

CLASSPATH="$JYTHON_HOME/jython.jar:\
$CF_HOME/lib/customlib/h2.jar:\
$CF_HOME/lib/customlib/hsqldb.jar:\
$CF_HOME/lib/customlib/jtds-1.2.5.jar:\
$CF_HOME/lib/customlib/mongo-2.7.0.jar:\
$CF_HOME/lib/customlib/sqlitejdbc-v037-nested.jar:\
$CLASSPATH"

JYTHONPATH="$JYTHON_HOME:$JYTHON_HOME/bin:$JYTHON_HOME/Lib"

PYTHONPATH="$PYTHON_HOME/bin"

PATH="$HOME/.local/bin:\
~/.meteor:\
/usr/local/bin:\
/usr/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/subversion/bin:\
/usr/local/opt/coreutils/libexec/gnubin:\
$ADOBE_AIR_SDK/bin:\
$ANT_HOME/bin:\
$BREW_HOME/bin:\
$BREW_HOME/share/python:\
$CATALINA_HOME/bin:\
$CF_HOME/bin:\
$COREUTILS:\
$EC2_HOME/bin:\
$FLEX_SDK/bin:\
$GOROOT/bin:\
$GOPATH/bin:\
$GRADLE_HOME/bin:\
$GRAILS_HOME/bin:\
$GROOVY_HOME/bin:\
$HEROKU_HOME/bin:\
$JETTY_HOME/bin:\
$JRUBY_HOME/bin:\
$M2_HOME\bin:\
$MONGODB_HOME/bin:\
$MYSQL_HOME/bin:\
$MY_HOME/bin:\
$NGINX_HOME/sbin:\
$PHANTOMJS:\
$RUBY_HOME/bin:\
$SUBLIMETEXT/bin:\
$WEBMIN_HOME:\
$PATH"

export ACTIVEMQ_HOME
export ADOBE_AIR_SDK
export ANDROID_HOME
export ANT_HOME
export BREW_HOME
export CATALINA_HOME
export CF_HOME
export CF_ROOT
export CLASSPATH
export DROPBOX_HOME
export EC2_HOME
export FLEX_SDK
export GOROOT
export GOPATH
export GRADLE_HOME
export GRAILS_HOME
export GROOVY_HOME
export HEROKU_HOME
export JAVA_HOME
export JAVA_OPTS
export JDK_HOME
export JENKINS_HOME
export JETTY_HOME
export JRUBY_HOME
export JYTHON_HOME
export JYTHONPATH
export M2_HOME
export MAVEN_OPTS
export MONGODB_HOME
export MYSQL_HOME
export NGINX_HOME
export PHANTOMJS
export PYTHON_HOME
export PYTHONPATH
export RUBY_HOME
export SUBLIMETEXT
export WEBMIN_HOME
export YUICOMPRESSOR
export BOGUS

export CC="gcc-4.2"

export PATH

## MY ALIASES
alias cl='clear'
alias ll='ls -lag | more --color'
alias px='ps Aue'
alias dx='du -k | more'
alias py='python manage.py'
alias jy='jython manage.py'
alias customize='source /etc/profile.d/lag_custom.sh'
alias update='source ~/.updates'

## FF X => FIND FILE NAMED X
alias ff="find . -name \!:1 -print"     

## LINE 5 FILE => SHOW LINE 5 OF FILE
alias line="sed -n '\''\!:1 p'\'' \!:2" 

## HISTOGRAM WORDS
alias wordcount='(cat \!* | tr -s '\''  .,;:?\!()[]"'\'' '\''\012'\'' | cat -n | tail -1 | awk '\''print $1'\'')' 

## VEEWEE (Vagrant Box builder)
alias veewee="bundle exec veewee"

### Shit from Paul Irish (Google webdev guru, who got it from someone else...LOLz!)
# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
# for file in ~/dotfiles/.{extra,bash_prompt,exports,aliases,functions}; do
for file in ~/dotfiles/.{bash_prompt,aliases,extras}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/z/z.sh

# init rvm
# source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# some additional edits based on the Messiah box.
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# v_XXX files are application [v]ersion files, added to the ~/dotfiles/.appversions file

#EOF
#LastUpdated: 12/27/2015
#v2015.12.27
