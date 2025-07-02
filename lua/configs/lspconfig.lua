-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- https://mason-registry.dev/registry/list
local servers = { "html", "cssls", "ts_ls", "svelte", "tailwindcss", "rust_analyzer", "dockerls", "pyright" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server
lspconfig.jsonls.setup {
  -- https://neovimcraft.com/plugin/b0o/SchemaStore.nvim/
  -- print "Setting up jsonls",
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    json = {
      schemas = require("schemastore").json.schemas {
        select = {
          "package.json",
        },
      },
      validate = { enable = true },
    },
  },
}
