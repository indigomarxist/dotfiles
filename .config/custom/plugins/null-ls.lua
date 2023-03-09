local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- javascript
  b.formatting.eslint_d,
  b.code_actions.eslint_d,

  -- prettierd
  b.formatting.prettierd.with {
    filetypes = {
      "markdown",
      "python",
      "html",
      "css",
    },
  },

  -- css
  b.diagnostics.stylint,

  -- python
  b.formatting.autopep8,
  -- b.diagnostics.flake8.with { filetypes = { "python" } },

  -- Lua
  b.formatting.stylua,

  -- latex
  b.code_actions.proselint.with { filetypes = { "tex" } },
  b.diagnostics.proselint.with { filetypes = { "tex" } },
  b.formatting.latexindent.with { filetypes = { "tex" } },
  -- b.diagnostics.chktex,

  -- c
  b.formatting.clang_format,

  --go
  b.formatting.gofmt,
}

local notify = vim.notify
vim.notify = function(msg, ...)
  if msg:match "warning: multiple different client offset_encodings" then
    return
  end

  notify(msg, ...)
end

null_ls.setup {
  debug = true,
  sources = sources,
}
