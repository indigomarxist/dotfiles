return {

  ["nvim-neorg/neorg"] = {
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require "custom.plugins.neorg"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["lervag/vimtex"] = {
    config = function()
      require "custom.plugins.vimtex"
    end,
  },

  -- ["mzlogin/vim-markdown-toc"] = {
  --   config = function() end,
  -- },

  ["preservim/vim-markdown"] = {
    config = function() end,
  },

  -- ["preservim/vim-pencil"] = { config = function()
  --     require "custom.plugins.vim-pencil"
  --   end,
  -- },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },
}

-- ["xuhdev/vim-latex-live-preview"] = {
--   config = function()
--   end,
-- },

-- ["lewis6991/spellsitter.nvim"] = {
--   config = function() end,
-- },

-- ["godlygeek/tabular"] = {
--   config = function() end,
-- },
