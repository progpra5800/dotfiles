# lang
export LANG=en_US.UTF-8

# keybind
# bindkey -v

# prompt
PROMPT="$ "
RPROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

# colors
autoload -U colors; colors

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt share_history

# auto cd command
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'

# auto pushd command
setopt auto_pushd
setopt pushd_ignore_dups

# completion
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt IGNOREEOF

# setting zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'

# ls command after cd command
chpwd() { ls -ltrG }
# mkdir and cd command at the same time
function mkcd(){
    if [[ -d $1 ]]; then
        echo "$1 already exists!"
        cd $1
    else
        mkdir -p $1 && cd $1
    fi
}

# added by Anaconda3 installer
export PATH="/home/yorimoto/anaconda3/bin:$PATH"
export PATH="/home/yorimoto/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias proterminator='terminator -l proterminator && exit'
