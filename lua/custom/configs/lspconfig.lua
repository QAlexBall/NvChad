local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig.util")
local servers = { "pyright", "gopls" }


for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- rust
-- lspconfig.rust_analyzer.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "rust" },
--   root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
--   settings = {
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--       checkOnSave = {
--         command = "clippy",
--       },
--     },
--   },
-- }
