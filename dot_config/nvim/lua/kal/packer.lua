vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
	use "kyazdani42/nvim-web-devicons"

	use {
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	}

	use({
		"ellisonleao/gruvbox.nvim",
		as = "gruvbox",
		config = function()
			vim.cmd('colorscheme gruvbox')
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
	use "tpope/vim-rhubarb"
	use "tpope/vim-surround"
	use "tpope/vim-repeat"

	use "nvim-treesitter/nvim-treesitter-context"
	use { "terrortylor/nvim-comment" }
	require('nvim_comment').setup()

	use {
		"alexghergh/nvim-tmux-navigation",
		config = function()
			require "nvim-tmux-navigation".setup {
				disable_when_zoomed = true -- defaults to false
			}
		end
	}

	use {
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons" -- optional, for file icon
		},
		config = function()
			require "nvim-tree".setup {}
		end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}

	use "wuelnerdotexe/vim-astro"

	use {
		"klen/nvim-test",
		config = function()
			require('nvim-test').setup()
		end
	}
	require("nvim-test").setup {
		silent = true
	}

	use { "zbirenbaum/copilot.lua" }
	use {
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
			require("copilot_cmp").setup()
		end
	}

	 -- Ruby
    use "tpope/vim-bundler"
    use "tpope/vim-rails"

	-- Astro
    use "wuelnerdotexe/vim-astro"
end)
