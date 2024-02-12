-- setup command to change windows
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })


-- setup command to split window to right
vim.api.nvim_set_keymap("n", "<leader>\\", "<Cmd>vsplit<CR>", { noremap = true, silent = true })


-- setup command for ctrl-backspace - delete whole word
vim.api.nvim_set_keymap("i", "<C-H>", "<C-w>", { noremap = true, silent = true })




