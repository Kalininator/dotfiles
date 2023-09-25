vim.keymap.set('n', '<leader>Gs', vim.cmd.Git, {})
vim.keymap.set('n', '<leader>Gp', vim.cmd { cmd = 'Git', args = { 'push' } }, {})
