local lsp_zero = require('lsp-zero')
local util = require("lspconfig").util
local lspconfig = require("lspconfig")

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	local opts = { buffer = bufnr, remap = false }
	lsp_zero.default_keymaps({ buffer = bufnr })
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.format() end, opts)
	vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leader>ac", function() vim.lsp.buf.code_action() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'tsserver', 'rust_analyzer', 'lua_ls', 'eslint' },
	handlers = {
		lsp_zero.default_setup,
	},
})

lspconfig.lua_ls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.tsserver.setup {
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
}
lspconfig.eslint.setup {
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = true
		-- client.server_capabilities.documentRangeFormattingProvider = false
	end,
}
lspconfig.terraformls.setup {
	filetypes = { "terraform", "hcl" }
}
lspconfig.html.setup {}
lspconfig.cssls.setup {}
lspconfig.jsonls.setup {}
lspconfig.solargraph.setup({ init_options = { formatting = true } })
-- lspconfig.rubocop.setup{}
lspconfig.tailwindcss.setup {
	filetypes = { "astro", "astro-markdown", "html", "javascript", "javascriptreact", "typescript", "typescriptreact" }
}
-- lspconfig.diagnosticls.setup {
-- 	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "astro" },
-- 	root_dir = function(fname)
-- 		return util.root_pattern("tsconfig.json")(fname) or util.root_pattern(".eslintrc.js")(fname)
-- 	end,
-- 	init_options = {
-- 		linters = {
-- 			eslint = {
-- 				command = "./node_modules/.bin/eslint",
-- 				rootPatterns = { ".eslintrc.js", ".git" },
-- 				debounce = 100,
-- 				args = {
-- 					"--stdin",
-- 					"--stdin-filename",
-- 					"%filepath",
-- 					"--format",
-- 					"json"
-- 				},
-- 				sourceName = "eslint",
-- 				parseJson = {
-- 					errorsRoot = "[0].messages",
-- 					line = "line",
-- 					column = "column",
-- 					endLine = "endLine",
-- 					endColumn = "endColumn",
-- 					message = "[eslint] ${message} [${ruleId}]",
-- 					security = "severity"
-- 				},
-- 				securities = {
-- 					[2] = "error",
-- 					[1] = "warning"
-- 				}
-- 			}
-- 		},
-- 		filetypes = {
-- 			javascript = "eslint",
-- 			javascriptreact = "eslint",
-- 			typescript = "eslint",
-- 			typescriptreact = "eslint",
-- 			astro = "eslint"
-- 		},
-- 		formatFiletypes = {
-- 			javascript = "eslint",
-- 			javascriptreact = "eslint",
-- 			typescript = "eslint",
-- 			typescriptreact = "eslint",
-- 			astro = "eslint"
-- 		}
-- 	}
-- }

lspconfig.astro.setup {}
