vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.keymap.set({ "n", "i" }, "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>a", "<C-w><left>")
vim.keymap.set("n", "<leader>l", "<C-w><right>")
vim.keymap.set("n", "<BS>", "ciw")
