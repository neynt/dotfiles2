# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/neynt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

# Keep working directory in new gnome-terminal window
. /etc/profile.d/vte.sh

# Prompt
autoload -U promptinit
promptinit
prompt walters

# Aliases
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'

# Path
export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH
export PATH=~/bin:$PATH

# up/down arrows search beginning
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

eval `dircolors -b ~/.dir_colors`
