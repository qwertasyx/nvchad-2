require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "svelte", "tailwindcss", "rust_analyzer", "dockerls", "pyright" }
-- local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
-- nvim_lsp.jsonls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     json = {
--       validate = { enable = true },
--       schemas = require("schemastore").json.schemas(),
--     },
--   },
-- })
