# Matt's Neovim Config

## Installation

Install this repo in the home `.config` directory and run the setup script.

```sh
mkdir -p ~/.config
git clone git@github.com:mattiebear/nvim-config ~/.config/nvim
~/.config/nvim/setup.sh
```

The Elixir language server is loaded locally and the absolute path must be used in the configuation for it to function. Set the variable `NVIM_CONFIG_DIR` in your ENV, for example:

```sh
# .zshenv
export NVIM_CONFIG_DIR="$HOME/.config/nvim"
```
