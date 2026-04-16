require("nvm_tree")
require("mason_lsp")
require("linter")
require("autocomplete")
require("git_signs")
require("treesitter")
require("telescope_cfg")
require("indent_blankline")
require("smearcursor")

vim.diagnostic.enable()
vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    },
    signs = { 
        active = true,
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.HINT]  = "󰟃",
            [vim.diagnostic.severity.INFO]  = "",
        },
    },
})
