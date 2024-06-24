vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = ","

-- bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},
	{
    "nvim-telescope/telescope.nvim",
		tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	}
}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

local config = require("nvim-treesitter.configs")

config.setup({
	ensure_installed = {"lua", "javascript", "vim", "elixir", "heex", "html", "typescript", "rust"},
	highlight = { enable = true },
  indent = { enable = true },
})
