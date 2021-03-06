# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Enables Vi mode
set -o vi
bindkey -v

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#Functions 
source ~/dotfiles/func

#Environment 
source ~/dotfiles/env

#History
HISTFILESIZE=1000000000

#Alias
source ~/dotfiles/alias

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export NVM_DIR="/Users/0mbre/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/0mbre/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/0mbre/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/0mbre/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/0mbre/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/0mbre/.nvm/versions/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/0mbre/.nvm/versions/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/0mbre/.nvm/versions/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/0mbre/.nvm/versions/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/0mbre/Dev/aifiddle/model-service/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/0mbre/Dev/aifiddle/model-service/node_modules/tabtab/.completions/slss.zsh


# added by Anaconda3 5.0.1 installer
# export PATH="/Users/0mbre/anaconda3/bin:$PATH"  # commented out by conda initialize

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/0mbre/anaconda3/bin:$PATH"  # commented out by conda initialize

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/0mbre/anaconda3/bin:$PATH"  # commented out by conda initialize
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/0mbre/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/0mbre/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/0mbre/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/0mbre/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

