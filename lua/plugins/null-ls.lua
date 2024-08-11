local M = {
  "jose-elias-alvarez/null-ls.nvim",
  event = "Bufenter",
}

function M.config()
  local null_ls = require "null-ls"
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  local formatting = null_ls.builtins.formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  local diagnostics = null_ls.builtins.diagnostics

  -- https://github.com/prettier-solidity/prettier-plugin-solidity
  null_ls.setup {
    debug = false,
    sources = {
      formatting.prettier.with {
        extra_filetypes = { "toml", "typescript" }
      },
      formatting.black.with { extra_args = { "--fast" } },
      formatting.stylua,
      formatting.google_java_format,
      formatting.swift_format,
      diagnostics.flake8,
    },
  }
end

return M
