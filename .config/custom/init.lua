-- local notify = vim.notify
-- vim.notify = function(msg, ...)
--   if msg:match "warning: multiple different client offset_encodings" then
--     return
--   end
--
--   notify(msg, ...)
-- end

-- require("null-ls").setup {
--   on_init = function(new_client, _)
--     new_client.offset_encoding = "utf-32"
--   end,
-- }

vim.opt.conceallevel = 2
