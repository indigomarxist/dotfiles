local M = {}

local override = require "custom.override"

M.plugins = require "custom.plugins"

M.plugins = {

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  override = {
    ["NvChad/ui"] = override.ui,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
  },

  user = require "custom.plugins",
}

M.ui = {
  theme = "catppuccin",
  statusline = {
    separator_style = "round",
    overriden_modules = function()
      return require "custom.statusline"
    end,
  },
}

M.mappings = require "custom.mappings"

return M
