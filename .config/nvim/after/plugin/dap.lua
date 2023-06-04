local Remap = require("aaronb.keymap")
local nnoremap = Remap.nnoremap
local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

nnoremap("<F5>", function() dap.continue() end)
nnoremap("<F10>", function() dap.step_over() end)
nnoremap("<F11>", function() dap.step_into() end)
nnoremap("<F12>", function() dap.step_out() end)
nnoremap("<Leader>b", function() dap.toggle_breakpoint() end)
nnoremap("<Leader>B", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
nnoremap("<Leader>lp", function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
nnoremap("<Leader>dr", function() dap.repl.open() end)
nnoremap("<Leader>dl", function() dap.run_last() end)
nnoremap("<Leader><F5>", function() dap.terminate() end)
