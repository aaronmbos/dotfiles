local Remap = require("aaronb.keymap")
local nnoremap = Remap.nnoremap

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nnoremap("<leader>n", function() 
  require("nvim-tree.api").tree.focus()
end)

nnoremap("<C-b>", function() 
  require("nvim-tree.api").tree.toggle()
end)

nnoremap("<C-n>", function() 
  require("nvim-tree.api").tree.open()
end)

-- empty setup using defaults
require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false
      }
    }
  }
})
