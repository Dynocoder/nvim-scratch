return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            -- setup keymaps
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = "Open telescope File Finder"})
            vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = "Live Grep"})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope Show Buffers"})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Telescope help tags"})


            -- telescope action keymaps (keymaps for when the telescope ui is on)
            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            -- kk, and jj will transfer into the normal mode
                            ["kk"] = { "<esc>", type = "command" },
                            ["jj"] = { "<esc>", type = "command" },
                        },
                    },
                },
            })    

        end,
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }
                    }
                }
            }
            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end
    }
}
