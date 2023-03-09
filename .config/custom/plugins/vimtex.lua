-- sample, doesnt seem to work
-- local g = require("utils").g
--
-- g.tex_conceal = "abdmg"
-- g.vimtex_view_method = "mupdf"
-- g.vimtex_toc_config = {
--   name = "ToC",
--   show_help = true,
-- }

vim.api.nvim_exec([[
syntax enable
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
]], false)
