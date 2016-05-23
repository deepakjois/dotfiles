# Fancy bash prompt. Needs bash-git-prompt package
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   GIT_PROMPT_THEME=Solarized
   GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
   GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files
   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# History
shopt -s histappend
export HISTFILESIZE=
export HISTSIZE=
HISTCONTROL=ignoreboth:erasedups
shopt -s cmdhist
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Git aliases
alias ga='git add'
alias gst='git status'
alias gp='git push'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gb='git branch'
alias gba='git branch -a'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
# From http://blogs.atlassian.com/2014/10/advanced-git-aliases/
# Show commits since last pull
alias gnew="git log HEAD@{1}..HEAD@{0}"
# Add uncommitted and unstaged changes to the last commit
alias gcaa="git commit -a --amend -C HEAD"

# Smart resize images
smartresize() {
   mogrify -path $3 -filter Triangle -define filter:support=2 -thumbnail $2 -unsharp 0.25x0.08+8.3+0.045 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB $1
}

# ledger aliases
alias lb="ledger -b `date '+%b'` -w b"
alias lbe="ledger -b `date '+%b'` -w b Expenses and not \\(Expenses:NonRoutine\\)"
alias lre="ledger -b `date '+%b'` -w r Expenses and not \\(Expenses:NonRoutine\\)"
alias lr="ledger -b `date '+%b'` -w r"

# PDF cat
alias pdfjoin="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"

alias site="cd ~/code/personal/website"
alias code="cd ~/code/personal/"
alias crs="cd ~/Movies/courses"
alias mvv="/usr/local/bin/mvim -v"
alias mvim="/usr/local/bin/mvim --remote-silent"

# Default editor
export EDITOR="mate -w"

# Path
export PATH=~/.local/bin:/Applications/ghc-7.10.3.app/Contents/bin:$PATH


