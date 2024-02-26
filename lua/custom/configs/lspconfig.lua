local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = { "pyright", "gopls" }


for _, lsp in ipairs(servers) do
  print(lsp)
  lspconfig[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
