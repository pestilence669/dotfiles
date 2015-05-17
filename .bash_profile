# vim: set ts=4 sw=4 noet:

if [ -x ~/.bashrc ]; then . ~/.bashrc; fi

export PATH="/usr/local/bin:$PATH"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="zork"

# Load Bash It
source $BASH_IT/bash_it.sh

# More custom shit
. ~/.bashrc_custom
