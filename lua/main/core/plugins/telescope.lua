local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '-', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim .fn.input("Grep >")});
end)
-- Switch to next buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', {noremap = true, silent = true})

-- Switch to previous buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', {noremap = true, silent = true})

local telescope = require('telescope');

telescope.setup({
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      vertical= {
          width = 0.5,
          height = 0.5 
      },
      horizontal= {
          width = 0.6,
          height = 0.5
      }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})

