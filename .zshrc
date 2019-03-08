export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/kumarm/.oh-my-zsh"
export ZSH_DISABLE_COMPFIX=true

export PATH=$PATH:/opt/apache-maven/bin

source $ZSH/oh-my-zsh.sh

source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh themes/agnoster
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-autosuggestions
    zgen load jocelynmallon/zshmarks
    zgen load zsh-users/zsh-syntax-highlighting

    zgen save
fi

prompt_context() { }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias vim="nvim"
