lspconfig = require'lspconfig'
coq = require'coq'

lspconfig.pylsp.setup{coq.lsp_ensure_capabilities()}
lspconfig.clangd.setup{coq.lsp_ensure_capabilities()}
lspconfig.rust_analyzer.setup{coq.lsp_ensure_capabilities()}
lspconfig.tsserver.setup{
    coq.lsp_ensure_capabilities(),
    filetypes = {"typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx"}
}


