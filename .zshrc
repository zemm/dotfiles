HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
unsetopt share_history

bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# The following lines were added by compinstall
zstyle :compinstall filename '/home/zemm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export SPACESHIP_EXIT_CODE_SHOW=true
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_TRUNC_REPO=false

fpath=( "$HOME/.zfunctions" $fpath )

autoload -U promptinit; promptinit
[ -f .zfunctions/prompt_spaceship_setup ] && prompt spaceship

# Common for all shells
[ -f ~/.shrc ] && source ~/.shrc
[ -f ~/.shrc.local ] && source ~/.shrc.local
