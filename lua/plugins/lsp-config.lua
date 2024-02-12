return {
    -- setup lspconfig
    {
        -- setup mason
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",

                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            -- Language servers
            lspconfig.lua_ls.setup({})


            local opts = {}
            -- Waits for the LSP to attach to the buffer (until LspAttach event is triggered)
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    -- Buffer local mappings.
                    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.definition, {})
                    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
                    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, opts)
                    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
                end
            })
        end
    }
}

