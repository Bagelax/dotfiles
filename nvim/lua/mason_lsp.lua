local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Apply shared defaults to all LSPs (root markers + capabilities)
vim.lsp.config('*', {
  capabilities = capabilities,
  root_markers = { '.git', 'Makefile', '.luarc.json' },
})

-- Per-server overrides
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

vim.lsp.config('clangd', {
  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
})

-- Enable all servers
local servers = {
    'lua_ls',
    'rust_analyzer',
    'bashls',
    'clangd',
    'pylsp',
    'dockerls',
    'docker_compose_language_service',
    'gopls',
    'cmake',
    'autotools_ls',
    'buf_ls',
}

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end
