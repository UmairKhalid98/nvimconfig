local opt=vim.opt
local map = vim.api.nvim_set_keymap;

map('n', '<ScrollWheelLeft>', 'zh', { noremap = true })
map('n', '<ScrollWheelRight>', 'zl', { noremap = true })
opt.number = true
opt.relativenumber = true
-- tab
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--qulait of life
opt.hlsearch = true
map('n', '<Esc>', "<cmd>nohlsearch<CR>", {})

opt.undofile = true
-- netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25
vim.g.netrw_chgwin = 2

-- mouse


opt.termguicolors = true
 -- opt.background = "dark"

opt.clipboard:append("unnamedplus")
