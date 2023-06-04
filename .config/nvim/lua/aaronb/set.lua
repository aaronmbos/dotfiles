vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.autoindent = true

vim.opt.wrap = true
-- Needed to keep buffers from closing
-- Specifically terminal windows with toggleterm
vim.opt.hidden = true

-- specifically for cmp
vim.opt.completeopt = menu,menuone,noselect

vim.opt.syntax = 'off'
