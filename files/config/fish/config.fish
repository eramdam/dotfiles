##############
## VARIABLES #
##############

# Remove the greeting
set fish_greeting
# https://starship.rs/
starship init fish | source

set -x DOTFILES $HOME/.dotfiles
set -x EDITOR 'vim'
set -x PATH /usr/local/bin /usr/local/sbin $PATH
set -x PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -x PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
set -x PATH $HOME/Library/Python/2.7/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $DOTFILES/bin/usr $PATH
set -x PATH $HOME/.yarn/bin $PATH


##############
## FUNCTIONS #
##############

function copyfile
  cat "$argv" | pbcopy
end

function copydir
  pwd | pbcopy
end


#############
## ALIASES ##
#############

# Relaunch your shell, quick'n'easy
alias reshell='exec $SHELL -l'

# Go back to the root of a git repo
alias groot='cd (git rev-parse --show-cdup)'
# Open Github.app
# alias gh="github ."

# VSCode
alias c="code"
alias cc="code ."

# thefuck => wtf
alias wtf='fuck'

# k is the new l, yo
alias l="exa"
alias ll="exa -l"

# bat -> https://github.com/sharkdp/bat
alias cat="bat"

# Outputs an ordered list of the sizes of folder/files in the current path
alias sort-sizes="du -h --max-depth=1 | sort -h"

# iTerm2 shell integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Use colors from pywal
# source ~/.cache/wal/colors.fish