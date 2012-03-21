alias xscreen-start='xpra start :`id -u $USER`; sleep 1;'
function xdo {
	DISPLAY=:`id -u $USER` $1 &
}
alias xterm='DISPLAY=:`id -u $USER` xterm -u8 &'
alias xscreen-attach='xpra attach :`id -u $USER` &'
alias xscreen-stop='xpra stop :`id -u $USER`'

alias ll='ls --color -lashF | less -R'
alias lls='ls --color -lasShF | less -R'

#Alias tmux to always support 256 colours and UTF-8
alias tmux='tmux -2 -u'

#Make sure screen always has UTF-8 support
alias screen='screen -U'
