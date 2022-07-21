# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/vlado/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

plugins=(
  git 
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  bgnotify
  archlinux
  ansible
  aws 
  docker
  helm
  kubectl
  man                                                                                                                    
  terraform
  vagrant
  python
  sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#########################
###### COMMON ALIASES 
########################
alias ll='ls -la --color'
alias r=ranger
alias cdd='cd ..'
alias cddd='cd ../..'
alias cdddd='cd ../../..'

#########################
###### TMUX ALIASES
########################
alias tmux='tmux -u'
alias t='tmux'
alias th='tmux new-session \; split-window -v -p 50'
alias tv='tmux new-session \; split-window -h -p 50'
alias t2='tmux new-session \; split-window -h -p 50 \; split-window -v -p 40'
alias ta='t a -t'
alias tls='t ls'
alias tn='t new -t'

#########################
###### GIT ALIASES
########################
# alias g='git'
alias gst='git status'
# alias gd='git diff'
# alias gdc='git diff --cached'
# alias gl='git pull'
# alias gup='git pull --rebase'
# alias gp='git push'
# alias gd='git diff'
# alias gc='git commit -v'
# alias gc!='git commit -v --amend'
# alias gca='git commit -v -a'
# alias gca!='git commit -v -a --amend'
# alias gcmsg='git commit -m'
# alias gco='git checkout'
# alias gcm='git checkout master'
# alias gr='git remote'
# alias grv='git remote -v'
# alias grmv='git remote rename'
# alias grrm='git remote remove'
# alias grset='git remote set-url'
# alias grup='git remote update'
# alias grbi='git rebase -i'
# alias grbc='git rebase --continue'
# alias grba='git rebase --abort'
# alias gb='git branch'
# alias gba='git branch -a'
# alias gcount='git shortlog -sn'
# alias gcl='git config --list'
# alias gcp='git cherry-pick'
# alias glg='git log --stat --max-count=10'
# alias glg2='git log -p -2'
# alias glgg='git log --graph --max-count=10'
# alias glgga='git log --graph --decorate --all'
# alias glo='git log --oneline --decorate --color'
# alias glog='git log --oneline --decorate --color --graph'
# alias gss='git status -s'
# alias ga='git add'
# alias gm='git merge'
# alias grh='git reset HEAD'
# alias grhh='git reset HEAD --hard'
# alias gclean='git reset --hard && git clean -dfx'
# alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

alias ls='colorls'
alias vi=vim
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Others Aliases:
# ripgrep -> search tool



# Configure colorls path
#export PATH:$PATH:/home/vlado/.local/share/gem/ruby/3.0.0/bin

# Ctrl+t list files+folders in current directory (e.g., type git add , press Ctrl+t, select a few files using Tab, finally Enter)
# Ctrl+r search history of shell commands
# Alt+c fuzzy change directory
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:~/bin

# Binding Ctrl + Space to autocomplete suggestion after typing command in zsh
bindkey '^ ' autosuggest-accept

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
