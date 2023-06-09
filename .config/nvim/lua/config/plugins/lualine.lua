local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_colors = {
  blue = "#82e2ff",
  green = "#61ffca",
  violet = "#a277ff",
  yellow = "#FFDA7B",
  black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.violet
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.blue

lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}

lualine.setup({
  options = {
    theme = lualine_nightfly
  }
})
