PROJECT_DIR=~/.config/nvim
ELIXIR_LS_DIR="$PROJECT_DIR/elixir-ls"
ELIXIR_LS_BUILD_DIR="$PROJECT_DIR/elixir-ls-build"

git clone git@github.com:elixir-lsp/elixir-ls.git $ELIXIR_LS_DIR

cd $ELIXIR_LS_DIR
mix deps.get
MIX_ENV=prod mix compile
MIX_ENV=prod mix elixir_ls.release2 -o $ELIXIR_LS_BUILD_DIR
