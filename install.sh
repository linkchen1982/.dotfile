echo ">>> Install nix:"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

echo ">>> Source nix:"
. ~/.nix-profile/etc/profile.d/nix.sh

echo ">>> Install packages:"
nix-env -iA \
	nixpkgs.git \
  nixpkgs.neovim \
  nixpkgs.yarn \
	nixpkgs.antibody \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv \

echo ">>> Stow:"
stow git
stow zsh
stow nvim

echo ">>> Add zsh to valid login shells:"
command -v zsh | sudo tee -a /etc/shells

echo ">>> Use zsh as default shell:"
sudo chsh -s $(which zsh) $USER 

antibody bundle <~/.zsh_plugins.txt> ~/.zsh_plugins.sh
