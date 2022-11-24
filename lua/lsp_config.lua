-- setup for autocompletion / lsp / snippets / debugging 
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_defaults = lspconfig.util.default_config
local cmp = require('cmp')
local luasnip = require('luasnip')

-- some basic lsp engines 
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  capabilities
)

lspconfig.pylsp.setup({capabilities = capabilities})
lspconfig.clangd.setup({capabilities = capabilities})
lspconfig.rust_analyzer.setup({capabilities = capabilities})
lspconfig.tsserver.setup({capabilities = capabilities})


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
        }),
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
    })

