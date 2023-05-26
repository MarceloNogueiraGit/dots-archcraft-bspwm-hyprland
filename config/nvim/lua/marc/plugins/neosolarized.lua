local status, n = pcall(require, "neosolarized")
if not status then
  return
end

n.setup({
  style = "dark", -- "dark" or "light"
  transparent = false, -- true/false; Enable this to disable setting the background
  comment_italics = true,
})

local cb = require("colorbuddy.init")
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new("white", "#ffffff")
Color.new("black", "#000000")
Group.new("Normal", colors.base1, colors.NONE, styles.NONE)
Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new("Visual", colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)

--local ok_status, NeoSolarized = pcall(require, "NeoSolarized")
--
--if not ok_status then
--  return
--end
--
---- Default Setting for NeoSolarized
--
--NeoSolarized.setup({
--  style = "dark", -- "dark" or "light"
--  transparent = false, -- true/false; Enable this to disable setting the background color
--  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--  enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
--  styles = {
--    -- Style to be applied to different syntax groups
--    comments = { italic = true },
--    keywords = { italic = true },
--    functions = { bold = true },
--    variables = {},
--    string = { italic = true },
--    underline = true, -- true/false; for global underline
--    undercurl = true, -- true/false; for global undercurl
--  },
--  -- Add specific hightlight groups
--  on_highlights = function(highlights, colors)
--    -- highlights.Include.fg = colors.red -- Using `red` foreground for Includes
--  end,
--})
---- Set colorscheme to NeoSolarized
---- Lua
--vim.cmd([[colorscheme NeoSolarized]])
------------------------------------------------------------------------------------
