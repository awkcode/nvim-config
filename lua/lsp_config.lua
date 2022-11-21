-- setup for autocompletion / lsp / snippets / debugging 
local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config
local cmp = require('cmp')
local luasnip = require('luasnip')

-- some basic lsp engines 
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.pylsp.setup({})
lspconfig.clangd.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.tsserver.setup({})


cmp.setup({
    snippet = {
        expand = function(args) 
            require('luasnip').lspexpand(args.body)
        end
        },
        sources = cmp.config.sources({
            {name = 'path'    },
            {name = 'nvim_lsp'},
            {name = 'luasnip' },
            {name = 'buffer'  },
        })
    })

