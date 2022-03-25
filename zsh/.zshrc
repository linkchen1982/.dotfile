# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

source ~/.zsh_plugins.sh

alias ls="ls -la"
alias vim="nvim"
alias cr="clear"

NIX_SH_PATH="/home/danadanad/.nix-profile/etc/profile.d/nix.sh"
if [ -e $NIX_SH_PATH ]; then
	. $NIX_SH_PATH;
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
