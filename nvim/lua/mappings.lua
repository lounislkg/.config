require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-c>", "copilot#Cancel()", { expr = true, silent = true, desc = "Annuler la suggestion Copilot" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "<C-j>", "copilot#Accept('<CR>')", {noremap = true, silent = true, expr=true, replace_keycodes = false })
