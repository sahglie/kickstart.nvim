return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      --vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      --vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      vim.keymap.set('n', '<leader>f', builtin.find_files, {})
      --vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>b', builtin.buffers, {})
      vim.keymap.set('n', '<leader>H', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>A', builtin.commands, {})
      vim.keymap.set('n', '<leader>m', builtin.registers, {})
      vim.keymap.set('n', '<leader>k', builtin.keymaps, {})
      vim.keymap.set('n', '<leader>J', builtin.jumplist, {})
      vim.keymap.set('n', '<leader>x', builtin.quickfix, {})
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    conifg = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {
              -- even more opts
            },
          },
        },
      }
      require('telescope').load_extension 'ui-select'
    end,
  },
}
