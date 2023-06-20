hour = os.date("*t")["hour"]

if hour >= 16 or hour < 8 then 
  vim.opt.background = "dark"
end

vim.opt.termguicolors = true

