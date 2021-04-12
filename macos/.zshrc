NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt prompt_subst

PS1="%(?.%F{green}√.%B%F{red}[%?]%b) "
PS1+="%F{blue}%* %F{blue}%n@%m:%F{green}%1~"
PS1+="%F{yellow}"'$(parse_git_branch)'
PS1+="%F{blue} $ %F{white}"

PS2=">"

export PS1
export PS2

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
