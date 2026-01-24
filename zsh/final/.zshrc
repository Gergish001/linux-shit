# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
fastfetch -c Vaio.jsonc
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
zinit light Aloxaf/fzf-tab
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
alias ls='ls --color'
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
#autocomplitions
autoload -Uz compinit && compinit
zinit cdreplay -q
#binds
bindkey '^A' autosuggest-accept
#aliases
alias cfsl='curl -fsSL https://christitus.com/linux | sh'
alias sbh='sudo bash'
alias sps='sudo pacman -S'
alias spu='sudo pacman -Syu'
alias yas='yay -S'
alias discord='discord --ozone-platform=wayland'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
