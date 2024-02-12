return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    config = function()
        vim.keymap.set("n", "<leader>e", function()
            vim.cmd.Neotree("toggle")
        end)
        vim.fn.sign_define("DiagnosticSignError",
        { text = " ", texthl = "DiagnosticSignError" })
        vim.fn.sign_define("DiagnosticSignWarn",
        { text = " ", texthl = "DiagnosticSignWarn" })
        vim.fn.sign_define("DiagnosticSignInfo",
        { text = " ", texthl = "DiagnosticSignInfo" })
        vim.fn.sign_define("DiagnosticSignHint",
        { text = "󰌵", texthl = "DiagnosticSignHint" })
        -- vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<Cr>", { noremap = true })

        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "rounded",
            filesystem = {
                hijack_netrw_behaviour = "open_default",
                filtered_items = {
                    hide_hidden = false,
                }
            },

            window = {
                mappings = {
                    ["<Cr>"] = "open",

                    -- to preview file without opening
                    -- ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
                }
            }
        })

    end
}
