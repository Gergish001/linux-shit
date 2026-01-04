  #set directory
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

  #check if zinit is downloaded
if [ ! -d "ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

  #load zinit
source "${ZINIT_HOME}/zinit.zsh"
  #add pl10k
zinit ice depth=1; zinit light romkatv/powerlevel10k
  #binds
bindkey '^A' autosuggest-accept
  #aliases
alias sps='sudo pacman -S'
alias spu='sudo pacman -Syu'
  #To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  #typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
