# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias ls='ls --color'
alias ll='ls -l'

set -o vi

alias ctags="ctags -R -h '.h.c'"
alias cpptags="ctags -R -h '.h.cc.cpp'"
alias doxygenconf="doxygen -g doxygen.conf"
alias doxy="doxygen doxygen.conf"

export PATH=$PATH:~/bin
export GREP_OPTION="--color=auto"

# Set the screen title
case $TERM in
  screen*) 
    # This is the escape sequence ESC k \w ESC \
    #Use path as title
    SCREENTITLEPATH='\[\ek\w\e\\\]'
    #Use program name as title
    SCREENTITLE='\[\ek\e\\\]'
    SCREENTITLETH='\[\ek\w\e\\\]'
    ;;
  *)
    SCREENTITLEPATH=''
    SCREENTITLE=''
    ;;
esac

export PS1="${SCREENTITLE}${SCREENTITLEPATH}${PS1}"
