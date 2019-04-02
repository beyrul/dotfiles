# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export TERM="xterm-256color"
ZSH_THEME="../custom/themes/powerlevel9/powerlevel9k"
#ZSH_THEME="norm"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm archlinux docker node systemd fzf)

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/k/k.sh
# User configuration

export PATH=$HOME/npm/bin:$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/bin:$PATH"
export GIT_SSL_NO_VERIFY=true
export LIBVA_DRIVER_NAME=i965

alias ut='curl -s http://home.softwaregroup-bg.com/ut.sh | ssh-agent sh -s '
alias aur="~/aur -si"
alias python=/usr/bin/python2
export PYTHON=/usr/bin/python2

export PATH="$HOME/adt-bundle-linux-x86_64-20140702/sdk/tools/:$HOME/adt-bundle-linux-x86_64-20140702/sdk/platform-tools/:$PATH"
alias git-meld="~/git-meld"
alias ut5=~/ut5
export TERM=xterm-256color
alias emacsnw='emacs -nw'
alias exo-open-term='exo-open --launch TerminalEmulator'
alias gus='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \; -exec git -C {} remote prune origin \;'
alias gbd='for dir in ./*; do (echo "$dir"; git -C "$dir" branch; echo "----------------"); done'
export VISUAL="subl3"
export ESLINT_RC="/home/zetxx/npm/lib/node_modules/ut-tools/eslint/.eslintrc"
alias ndc='npm outdated | node ~/.usr/bin/ud2.js'
export NODE_PATH="/home/zetxx/npm/lib/node_modules"
alias term='/home/zetxx/term'
alias fm='ranger'
alias ls='exa'
export WINEARCH=win32
export EDITOR=vim
archey3
#source /usr/share/nvm/init-nvm.sh
#export NPM_CONFIG_PREFIX=/home/zetxx/npm
