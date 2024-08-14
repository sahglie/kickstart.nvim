  return {
    'sahglie/darcula-dark.nvim',  priority = 1000,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      --require("darcula-dark").setup({})
      vim.cmd.colorscheme "darcula-dark"
    end
  }
