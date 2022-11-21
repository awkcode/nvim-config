local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config
local cmp = require('cmp')

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)
cmp.setup({
    snippet = {
        expand = function(args) 
            require('luasnip').lspexpand(args.body)
        end
        },
})
lspconfig.pylsp.setup({})
lspconfig.clangd.setup{}
--lspconfig.rust_analyzer.setup{coq.lsp_ensure_capabilities()}
--lspconfig.tsserver.setup{
--    coq.lsp_ensure_capabilities(),
--    filetypes = {"typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx"}
--}


