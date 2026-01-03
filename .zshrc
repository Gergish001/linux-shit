# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set directory
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

#check if zinit is downloaded
# if [ ! -d "ZINIT_HOME" ]; then
#     mkdir -p "$(dirname $ZINIT_HOME)"
#     git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
# fi

#load zinit
source "${ZINIT_HOME}/zinit.zsh"

#add pl10k
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
#autocomplitions
autoload -U compinit && compinit
#binds
bindkey '^Q' autosuggest-accept
#aliases
alias sps='sudo pacman -S'
alias spu='sudo pacman -Syu'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
