-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.opt.termguicolors = true
--vim.cmd'colorscheme yourfavcolorscheme'
vim.cmd.set 'expandtab'
vim.cmd.set 'number'
vim.cmd.set 'tabstop=2'
vim.cmd.set 'softtabstop=2'
vim.cmd.set 'shiftwidth=2'

vim.keymap.set('n', '<leader>y', '"*yy')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>.', '<c-^>')
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')
vim.keymap.set('n', 'U', 'mmviw~`m')
vim.keymap.set('n', '<leader>r', ':!%:p<cr>')
vim.keymap.set('n', '<leader>h', ':set hls!<cr>')
vim.keymap.set('n', '<leader>w', ':set wrap!<cr>')
vim.keymap.set('n', ';', ":call nerdcommenter#Comment('n', 'Toggle')<cr>")
vim.keymap.set('v', ';', ":call nerdcommenter#Comment('v', 'Toggle')<cr>")
vim.keymap.set('n', '<leader>d', ':bp<bar>vs<bar>bn<bar>bd<cr>')
vim.keymap.set('n', '<leader>gr', ':!go run  %')

-- Navigate vim panes better
--vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
--vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
--vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
--vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.filetype.add {
  extension = {
    templ = 'templ',
    go = 'go',
    ruby = 'ruby',
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go' },
  callback = function()
    --vim.keymap.set('n', '<leader>b', ':<C-u>call <SID>build_go_files()<CR>')
    vim.keymap.set('n', '<leader>r', ':!go run %')
    vim.keymap.set('n', '<leader>t', '<Plug>(go-test)')
  end,
})
--vim.keymap.set('n', '<leader>gt', ':exec \':!go test \' . expand("%:.")')
--autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
--autocmd FileType go nmap <leader>r  :exec ':!go run ' . expand("%:.")
--autocmd FileType go nmap <leader>t  <Plug>(go-test)
