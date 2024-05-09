
local map = vim.keymap.set;

-- vim.opt.timeoutlen = 50
--
-- -- netrw related
map('n', '<leader>pv', ':NvimTreeToggle<CR>', defaults)
-- map('n', '<leader>pv', ':Ex<CR>', defaults)
--movement
map('n', '<leader><Left>', 'I', defaults)
map('n', '<leader><Right>', 'A', defaults)
map('n', '<leader><Up>', 'H', defaults)
map('n', '<leader><Down>', 'L', defaults)

-- toggles
-- map('i', '<leader><leader>','<Esc>', defaults)

-- map('n','<F2>','<Esc>', defaults)

--copy and paste
map('v', 'c', 'y', defaults) --copy
map('n', 'cc', 'yy', defaults) -- copy the entire line
map('n', 'X', 'ciw', defaults) --cut the current word
map('n', 'ci', '"_ci', defaults) --replace ci with blackhole ci
map('n', 'di', '"_di', defaults) --replace di with blackhole di

-- undo redo
map('n', 'z', 'u', defaults)
map('n', 'Z', '<C-r>', defaults)

-- find and replace
map('n', '<leader>F', '*', defaults)

--compiling
map('n','<leader>rc', ':w<CR>:!clang++ -std=c++20 % -o %< && ./%<<CR>', defaults)

--lsp keybinds 
--code actions on errors and warnings
map('n', '<leader>sl', '<F4>', defaults)
map('n', '[d', vim.diagnostic.goto_prev, defaults)
map('n', ']d', vim.diagnostic.goto_next, defaults)
map('n', '<leader>e', vim.diagnostic.open_float, defaults)


vim.highlight.on_yank();

vim.api.nvim_create_autocmd("BufWritePost", {
 pattern = '*.xaml',
 callback = function()
    -- Your command here
    vim.cmd(":silent w") -- Use :silent to suppress output
    vim.cmd(":silent !open -a 'Visual Studio' &") -- Suppress output of shell commands
    vim.cmd(":silent !open -a 'iTerm' &") -- Suppress output of shell commands
 end,
})

