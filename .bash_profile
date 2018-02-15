# vim: set ts=4 sw=4 noet:

if [ -e ~/.bashrc ]; then . ~/.bashrc; fi

export PATH="/usr/local/bin:$PATH"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="zork"

# Load Bash It
source $BASH_IT/bash_it.sh

# More custom shit
. ~/.bashrc_custom

# iterm2 shell integration
test -e "$HOME/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# added by Anaconda3 installer
export PATH="$HOME/anaconda3/bin:$PATH"
