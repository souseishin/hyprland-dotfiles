-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "x", "n", "s" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set({ "n", "v" }, "d", '"_d')
