# Matt's Neovim Config

## Installation

Install this repo in the home `.config` directory.

```sh
mkdir -p ~/.config
git clone https://github.com/mattiebear/nvim-config ~/.config/nvim
```

## Elixir Language Server

Install Elixir LS to some directory and build it following instructions from (https://github.com/elixir-lsp/elixir-ls#building-and-running)[https://github.com/elixir-lsp/elixir-ls#building-and-running].

```sh
git clone git@github.com:elixir-lsp/elixir-ls.git ~/dev
cd elixir-ls
mix deps.get
mix deps.compile
MIX_ENV=prod mix elixir_ls.release2 -o <release_dir>
```

Add the `<release_dir>/language_server.sh` to the configuration.

