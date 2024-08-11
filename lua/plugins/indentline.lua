local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
  commit = "9637670896b68805430e2f72cf5d16be5b97a22a",
}

M.opts = {
  char = "▏",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}

return M
