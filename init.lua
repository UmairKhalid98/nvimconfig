vim.g.mapleader = " "
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

 vim.opt.rtp:prepend(lazypath)

-- here you can setup the language servers
 require("lazy").setup("main.plugins")
 require("main.core.cmpSetup")
 require("main.core.lspSetup")
 require("nvim-treesitter.configs").setup(
 require"main.core.plugins.treesitter" )
 require("main.core.plugins.telescope")
 require("main.core.options")
 require("main.core.keymaps")
 require("main.core.colorscheme")
 require("main.core.plugins.dapAdapter")
 require('Comment').setup()
 require('nvim-ts-autotag').setup()
 -- require("nvim-tree").setup()
-- Define a function to switch to Visual Studio Code and back
-- vim.cmd[[hi NvimTreeNormal guibg=guibg=#2B4252"]]

-- Hot Reload 
local function write_hot_reload()
    vim.cmd(":silent w") -- Use :silent to suppress output
    vim.cmd(":silent !open -a 'Visual Studio' &") -- Suppress output of shell commands
    vim.cmd(":silent !open -a 'iTerm' &") -- Suppress output of shell commands
end

vim.api.nvim_create_user_command('Whl', write_hot_reload, {})

