require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "bashls",
    "clangd",
    "pylsp",
    "dockerls",
    "docker_compose_language_service",
    "gopls",
    "cmake",
    "autotools_ls",
  },
})

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").pylsp.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").cmake.setup {}
require("lspconfig").autotools_ls.setup {}

