local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.pyright.setup({
            capabilities = capabilities
        })
        lspconfig.ts_ls.setup({
            capabilities = capabilities
        })
        lspconfig.cssls.setup({
            capabilities = capabilities
        })
        lspconfig.bashls.setup({
            capabilities = capabilities
        })
    end
}

