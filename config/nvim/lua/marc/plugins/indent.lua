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
return {
  enabled = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "lazy",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "text",
  },
  -- char = "▏",
  -- char = "│",
  char = "",
  eol = "↴",
  context_char = "│",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
}
