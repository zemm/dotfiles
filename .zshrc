HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/zemm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

fpath=( "$HOME/.zfunctions" $fpath )

autoload -U promptinit; promptinit
[ -f .zfunctions/prompt_spaceship_setup ] && prompt spaceship

# Common for all shells
[ -f ~/.shrc ] && source ~/.shrc
[ -f ~/.shrc.local ] && source ~/.shrc.local
