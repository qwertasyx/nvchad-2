require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-n>", ":Telescope git_files <CR>", { desc = "Telescope Files" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-u>", "<C-u>zz", { desc = "move up" })
map("n", "<C-d>", "<C-d>zz", { desc = "move down" })

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
nomap("n", "<leader>fm")

-- formatter
map("n", "gf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })
