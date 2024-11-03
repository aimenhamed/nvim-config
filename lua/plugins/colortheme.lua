local M = {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
}
M.name = "catppuccin-mocha"
-- local M = {
--   "Mofiqul/vscode.nvim",
--   lazy = false,
--   priority = 1000,
-- }
-- M.name = "vscode"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
