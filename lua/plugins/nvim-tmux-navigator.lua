return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', 'C-l', ':TmuxNavigateLeft<CR>'),
  vim.keymap.set('n', 'C-j', ':TmuxNavigateDown<CR>'),
  vim.keymap.set('n', 'C-k', ':TmuxNavigateUp<CR>'),
  vim.keymap.set('n', 'C-h', ':TmuxNavigateRight<CR>'),
}
