ZSH_THEME="fwalch"
source $ZSH/oh-my-zsh.sh


PROMPT="%F{white}%n%f $PROMPT"

unalias ls 2>/dev/null

ls() {
    exa --icons --color=auto "$@"
}
alias dev="cd ~/development"
alias ll="exa -lah --icons"
alias tree="exa --tree --icons"
alias sourceit="source ~/.zshrc && echo 'Sourced ~/.zshrc'"
