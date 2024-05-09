local map = vim.keymap.set;
local dap = require("dap")
local dapui = require("dapui")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
dapui.setup()
-- Keybindn

map('n', '<F6>', dap.continue, defaults)
map('n', '<F10>', dap.step_over, defaults)
map('n', '<F11>', dap.step_into, defaults)
map('n', '<F12>', dap.step_out, defaults)
map('n', '<Leader>dr', dap.repl.open, defaults)
map('n', '<Leader>dl', dap.run_last, defaults)
map('n', '<Leader>b', dap.toggle_breakpoint, defaults)


map('n', '<Leader>B', '<Cmd>lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', defaults)
map('n', '<Leader>lp', '<Cmd>lua require\'dap\'.set_breakpoint(nil, nil, vim.fn.input(\'Log point message: \'))<CR>', defaults)


