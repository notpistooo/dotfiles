#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# adding ~/.local/bin to PATH
if [ -d ~/.local/bin/ ]
then
	case ":${PATH}:" in
		*:"$HOME/.local/bin":*) ;;
		*) export PATH="$PATH:$HOME/.local/bin";;
	esac
fi


# adding ~/.cargo/bin to PATH
if [ -d ~/.cargo/bin/ ]
then
	case ":${PATH}:" in
		*:"$HOME/.cargo/bin":*) ;;
		*) export PATH="$PATH:$HOME/.cargo/bin";;
	esac
fi


# adding pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"


# ignoring duplicates in history
export HISTCONTROL=ignoredups


# prompt
PS1='[\u@\h \W]\$ '


#aliases
alias cat='bat'
alias ls='exa'
alias ll='ls -al'
alias grep='grep --color=auto'


# starting xorg
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg>/dev/null && exec startx &>/dev/null
