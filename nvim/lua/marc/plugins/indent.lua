-- import indent plugin safaly
local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
  return
end

-- anable plugins
--require("indent_blankline").setup({
-- for example, context is off by default, use this to turn it on
--  show_current_context = true,
--  show_current_context_start = true,
--})

--With context indent highlighted by treesitter
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup({
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
})
