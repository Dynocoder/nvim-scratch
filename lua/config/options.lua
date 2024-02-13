-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- screen splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- text wrapping
vim.opt.wrap = false

-- tab and indent spacing
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- copy from system clipboard
vim.opt.clipboard = "unnamedplus"

-- start scrolling from screen mid
vim.opt.scrolloff = 999

-- sets the screen as cells
vim.opt.virtualedit = "block"

-- displays the characters being replaced
vim.opt.inccommand = "split"

-- ignores recommendation case throughout vim
vim.opt.ignorecase = true

-- terminal guicolors
vim.opt.termguicolors = true


-- setup the leader keys using a vim global 'vim.g'
vim.g.mapleader = " "


-- incremental search
vim.opt.incsearch = true

vim.opt.updatetime = 50



