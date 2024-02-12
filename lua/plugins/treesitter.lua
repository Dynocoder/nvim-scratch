return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- A list of parser names, or "all" (the five listed parsers should always be installed)
                ensure_installed = { 
                    "c", 
                    "cpp",
                    "c_sharp",
                    "javascript",
                    "lua", 
                    "typescript", 
                    "vim", 
                    "vimdoc", 
                    "query" 
                },

                auto_install = true,

                highlight = {
                    enable = true,
                },

                textobjects = {
                    select = {
                        enable = true,

                        lookahead = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            -- You can optionally set descriptions to the mappings (used in the desc parameter of
                            -- nvim_buf_set_keymap) which plugins like which-key display
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            -- You can also use captures from other query groups like `locals.scm`
                            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                        },

                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        -- If you set this to `true` (default is `false`) then any textobject is
                        -- extended to include preceding or succeeding whitespace. Succeeding
                        -- whitespace has priority in order to act similarly to eg the built-in
                        -- `ap`.
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    }, 
    { 
        "nvim-treesitter/nvim-treesitter-textobjects" 
    }

}
