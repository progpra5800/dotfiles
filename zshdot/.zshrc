# lang
export LANG=ja_JP.UTF-8

# keybind
# bindkey -v

# prompt
autoload -Uz colors
colors
PROMPT="%{${fg[white]}%}$%{${reset_color}%} "
RPROMPT="%{${fg[white]}%}[%~]%{${reset_color}%}"

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
alias ls='ls -l --color=auto'
alias la='ls -al --color=auto'
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt IGNOREEOF

alias so='source'

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
export PATH="$HOME/anaconda3/bin:$PATH"