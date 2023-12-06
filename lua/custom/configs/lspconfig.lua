local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatues = true,
      },
    },
  },
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"c", "cpp"},
})

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.ocamllsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"ocaml"},
})

lspconfig.zls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"zig"},
})
