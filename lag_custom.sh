#!/bin/sh

## updated to v_2018.04.09

# get version settings
source ~/dotfiles/.appversions

# get paths
source ~/dotfiles/.paths

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

# init dvm (docker version manager)
# . "$(brew --prefix dvm)/dvm.sh"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Prefer 'nano' shell editor
export EDITOR="nano"

# some additional edits based on the Messiah box.
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
# v_XXX files are application [v]ersion files, added to the ~/dotfiles/.appversions file

#EOF
#LastUpdated: 4/9/2018
#v2018.04.09
