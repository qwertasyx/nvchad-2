require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-n>", ":Telescope git_files <CR>", { desc = "Telescope Files" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- p

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
nomap("n", "<leader>fm")

-- formatter
map("n", "<leader>gf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

map("n", "gf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })
