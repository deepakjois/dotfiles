# Load host-specific config
source $HOME/$HOST.zsh

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="gentoo"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export DISABLE_AUTO_TITLE=true

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
