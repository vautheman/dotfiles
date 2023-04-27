local status, _ = pcall(vim.cmd, "colorscheme aura")
if not status then
  print("Colorscheme not found !")
  return
end

vim.g.termguicolors = true
