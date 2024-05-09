
local lsp_zero = require('lsp-zero')



lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
 -- vim.keymap.set('n', '<leader>/', function() vim.lsp.buf.comment() end, opts)
    lsp_zero.default_keymaps({buffer = bufnr})
-- vim.keymap.set('n', '<leader>gr', '<cmd>Telescope lsp_references<cr>', {buffer = bufnr})

end)
--vim.lsp.buf.format {
 --   filter = function(client) return client.name ~= "tsserver" end
--}
-- here you can setup the language server
require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      require('lspconfig').lua_ls.setup({
         settings = {
              Lua = {
                completion = {
                callSnippet = "Replace"
          },
            diagnostics = {
                globals = { 'cmp_select','vim','defaults' },
                }
            },
            workspace ={
              library = vim.api.nvim_get_runtime_file('', true),
          }
          }
      })
    require("lspconfig").tsserver.setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function(client)
            client.resolved_capabilities.document_formatting = false
        end,
    })

    end,
  },
})

