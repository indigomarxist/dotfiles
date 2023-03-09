require("neorg").setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.norg.concealer"] = {},
    ["core.integrations.treesitter"] = {},
    -- ["core.norg.completion"] = {}, --  completion
    -- ["core.norg.journal"] = {},
    -- ["core.norg.qol.toc"] = {},
    -- ["core.norg.manoeuvre"] = {},
    ["core.norg.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
      },
    },
  },
}

vim.api.nvim_exec(
  [[
syntax enable
]],
  false
)
