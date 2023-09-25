require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "javascript", "typescript", "lua", "rust", "ruby", "yaml", "tsx", "toml", "python", "markdown", "json", "html", "hcl", "gitignore", "dockerfile", "css", "vim", "vimdoc", "query" },

  highlight = {
    enable = true,
  },
}
