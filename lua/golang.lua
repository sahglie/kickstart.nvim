vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go' },
  callback = function()
    vim.keymap.set('n', '<leader>r', ':!go run %')
  end,
})

vim.g['test#go#runner'] = 'gotest'
