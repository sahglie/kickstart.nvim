return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        --ensure_installed = { "lua_ls", "gopls", "ruby_lsp", "templ", "html" },
        ensure_installed = { 'lua_ls', 'gopls', 'ruby_lsp', 'html' },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.lua_ls.setup { capabilities = capabilities }
      lspconfig.ruby_lsp.setup { capabilities = capabilities }
      lspconfig.gopls.setup { capabilities = capabilities }
      lspconfig.templ.setup { capabilities = capabilities }
      --lspconfig.html.setup({
      --on_attach = on_attach,
      --capabilities = capabilities,
      --  filetypes = { "html", "templ" },
      --})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.code_action, {})
      --vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end,
  },
}
