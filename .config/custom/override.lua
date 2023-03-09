local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "go",
    "html",
    "css",
    "javascript",
    "markdown",
    "lua",
    -- "norg",
    "c",
    "python",
    "latex",
    "fish",
    "bash",
  },
}

M.ui = {
  statusline = {
    separator_style = "round",
  },

  tabufline = {
    enabled = false,
  },
}

return M
