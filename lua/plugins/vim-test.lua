local function docker_transform(cmd)
  return 'docker compose exec web ' .. cmd
end

return {
  'vim-test/vim-test',
  config = function()
    vim.keymap.set('n', '<leader>t', ':TestNearest<CR>')
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>')
    vim.keymap.set('n', '<leader>a', ':TestSuite<CR>')
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>')
    vim.keymap.set('n', '<leader>g', ':TestVisit<CR>')

    --vim.g['test#custom_transformations'] = { docker = docker_transform }
    --vim.g['test#transformation'] = 'docker'
  end,
}
