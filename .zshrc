# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git github heroku knife node npm osx ruby rails3 rvm vi-mode nyan)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/.rvm/bin:$PATH

alias be="nocorrect bundle exec"
alias b="nocorrect bundle"

alias knife='nocorrect knife'
alias rspec='nocorrect rspec'
alias git='nocorrect git'

export EDITOR="vim"
export GIT_EDITOR="vim"
alias mvim='rvm system do /usr/local/bin/mvim $@'
alias vim='mvim -v'

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/*-pk.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/*-cert.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.4.1/jars"
export AWS_ELB_HOME="/usr/local/Cellar/elb-tools/1.0.14.3/jars"

unsetopt share_history

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
