local builtin = require('telescope.builtin')
require("telescope").setup(
	{
		pickers = {
			find_files = {
				disable_devicons = false,
				hidden = true
			},
			git_files = {
				disable_devicons = false,
				hidden = true
			},
			file_browser = {
				disable_devicons = false,
				hidden = false
			}
		}
	}
)

require("telescope").load_extension("fzf")

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gu', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>l', function() vim.cmd('Telescope current_buffer_fuzzy_find') end, {})

vim.keymap.set('n', '<leader>a', builtin.live_grep, {})
