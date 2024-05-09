
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()


cmp.setup({
    sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'path'},
    {name = 'luasnip'},

  },
    mapping = cmp.mapping.preset.insert({
      ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      ["<C-l>"] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({select = false}),
      ['<Tab>'] = cmp_action.tab_complete(),
      ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
  })
})

