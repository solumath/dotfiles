-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl + / to toggle comments in Normal and Visual mode
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("n", "<C-S-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("n", "<C-S-{>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<C-S-/>", "gc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<C-S-{>", "gc", { remap = true, desc = "Toggle Comment" })

-- Delete word backward/forward in Insert Mode
vim.keymap.set("i", "<C-Delete>", "<C-o>de", { noremap = true, silent = true })
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })

-- Jump words forward/backward in Insert Mode
vim.keymap.set("i", "<C-Left>", "<C-o>b", { noremap = true })
vim.keymap.set("i", "<C-Right>", "<C-o>w", { noremap = true })

-- Also useful for Normal Mode if you prefer the arrows
vim.keymap.set("n", "<C-Left>", "b", { noremap = true })
vim.keymap.set("n", "<C-Right>", "w", { noremap = true })

-- VSCode-style rename
vim.keymap.set({ "n", "i" }, "<F2>", vim.lsp.buf.rename, { desc = "Rename" })
