local M = {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
}

local function icon()
  return "☪"
end

function M.config()
  require("lualine").setup {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "diagnostics", icon },
      lualine_x = { 
        {
          'datetime',
          style = ' %I:%M:%S %p (%d/%m/%Y)'
        },
        "diff", "spaces", "filetype",
      },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
