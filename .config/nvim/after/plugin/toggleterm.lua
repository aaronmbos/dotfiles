function _G.set_terminal_keymaps() 
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], {buffer = 0})
end

require('toggleterm').setup{
  -- size can be a number or function which is passed the current terminal
  size = 20,
  open_mapping = [[<c-j>]],
  hide_numbers = true,
  close_on_exit = true
}
