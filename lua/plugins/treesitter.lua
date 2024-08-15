return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local config = require 'nvim-treesitter.configs'
      config.setup {
        ensure_installed = {
          'lua',
          'javascript',
          'ruby',
          'go',
          'templ',
          'html',
        },
        auto_install = true,
        autopairs = { enable = true },
        autotag = { enable = true },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
  { 'joerdav/templ.vim' },
}
