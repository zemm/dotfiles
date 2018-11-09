# typeset -U path cdpath fpath manpath

HISTSIZE="10000"
HISTFILE="$HOME/.zsh_history"
SAVEHIST="10000"

setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
unsetopt SHARE_HISTORY

bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#
# Spaceship prompt
#

if test -d "$HOME/.zsh/plugins/spaceship"; then
	path+="$HOME/.zsh/plugins/spaceship"
	fpath+="$HOME/.zsh/plugins/spaceship"
	source "$HOME/.zsh/plugins/spaceship/spaceship.zsh"
fi

export SPACESHIP_EXIT_CODE_SHOW=true
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_TRUNC_REPO=false

#export SPACESHIP_PROMPT_ORDER=(
#  time          # Time stampts section
#  user          # Username section
#  dir           # Current directory section
#  host          # Hostname section
#  git           # Git section (git_branch + git_status)
#  # hg            # Mercurial section (hg_branch  + hg_status)
#  # package       # Package version
#  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
#  # xcode         # Xcode section
#  # swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
#  # julia         # Julia section
#  docker        # Docker section
#  # aws           # Amazon Web Services section
#  venv          # virtualenv section
#  # conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  # dotnet        # .NET section
#  # ember         # Ember.js section
#  kubecontext   # Kubectl context section
#  exec_time     # Execution time
#  line_sep      # Line break
#  battery       # Battery level and status
#  # vi_mode       # Vi-mode indicator
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)

#
# Local non-versioned stuff
#

[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
