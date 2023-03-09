local M = {}

M.core = {

  n = {
    ["H"] = { "0" },
    ["L"] = { "$" },
    ["<leader>pp"] = { "<cmd> !clear;python3 % <CR>" },
    ["<leader>r"] = { "<cmd> cc % && ./a.out <CR>" },
  },

  i = {
    ["jk"] = { "<Esc>" },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>" },
  },
}

M.nvchad = {
  n = {
    ["<leader>j"] = { "<cmd> bprevious <CR>" },
    ["<leader>k"] = { "<cmd> bnext <CR>" },
    ["<leader>s"] = { "<cmd> lua vim.diagnostic.open_float() <CR>" },
  },
}

M.null_ls = {
  n = {
    ["<leader>fm"] = { "<cmd> lua vim.lsp.buf.format { async = true } <CR>" },
  },
}

M.livepreview = {
  n = {
    ["<leader>lp"] = { "<cmd> LLPStartPreview <CR>" },
  },
}

M.pencil = {
  n = {
    ["<leader>tp"] = { "<cmd> TogglePencil <CR> " },
  },
}

M.toc = {
  n = {
    ["<leader>to"] = { "<cmd> Toc <CR> " },
  },
}
return M
