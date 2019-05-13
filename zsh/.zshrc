# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH=/home/gbilley/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time battery ram load)
DEFAULT_USER="gbilley"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow docker npm node ng mvn ruby gem yarn jira adb minikube kubectl web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias local-branch="git branch -vv | grep disparue | xargs -0 -L1 | grep -oP '^  [^ ]+'"
alias prune-branch="git branch -vv | grep disparue | xargs -0 -L1 | grep -oP '^  [^ ]+' | xargs -I % sh -c 'git branch -D %'"
alias k="kubectl"

# Set java home
export NODE_HOME=/opt/node-v6.10.2-linux-x64
export MAVEN_HOME=/opt/apache-maven-3.5.0
export MONGO_HOME=/opt/mongodb-linux-x86_64-amazon-3.4.5
export ADB_HOME=/opt/adb
export GOPATH=/usr/lib/go-1.10

export PATH=$PATH:$NODE_HOME/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$MONGO_HOME/bin:$ADB_HOME:$GOPATH/bin
# Autocompletion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gbilley/.sdkman"
[[ -s "/home/gbilley/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gbilley/.sdkman/bin/sdkman-init.sh"

# tabtab source for jhipster package
# uninstall by removing these lines or running `tabtab uninstall jhipster`
[[ -f /home/gbilley/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh ]] && . /home/gbilley/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh

export CATALIE_HOME=/opt/apache-tomcat-9.0.0.M9

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
