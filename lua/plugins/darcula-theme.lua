return {
  --{
  --  'EdenEast/nightfox.nvim',
  --  priority = 1000,
  --  dependencies = {
  --    'nvim-treesitter/nvim-treesitter',
  --  },
  --  config = function()
  --    local fox = require 'nightfox'
  --    fox.setup {}
  --    vim.cmd.colorscheme 'nightfox'
  --  end,
  --},
  {
    'sahglie/sahglie-blackboard',
    priority = 1000,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      local blackboard = require 'blackboard'
      --blackboard.setup {}
      --vim.cmd.colorscheme 'sahglie-blackboard'
    end,
  },
  {
    'sahglie/darcula-dark.nvim',
    priority = 1000,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      local darcula = require 'darcula'
      darcula.setup {}
      vim.cmd.colorscheme 'darcula-dark'
    end,
  },
}
