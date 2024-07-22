require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-n>", ":Telescope git_files <CR>", { desc = "Telescope Files" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-u>", "<C-u>zz", { desc = "move up" })
map("n", "<C-d>", "<C-d>zz", { desc = "move down" })

-- lsp stuff
map("n", "<leader>ls", function()
  vim.lsp.buf.signature_help()
end, { desc = "LSP Signature Help" })
map("n", "<leader>lf", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "LSP Signature Help" })

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
nomap("n", "<leader>fm")

-- formatter
map("n", "gf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- Copilot
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, {
  desc = "Copilot Accept",
  replace_keycodes = true,
  nowait = true,
  silent = true,
  expr = true,
  noremap = true,
})
