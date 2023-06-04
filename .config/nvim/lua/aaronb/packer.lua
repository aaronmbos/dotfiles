-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-lualine/lualine.nvim'
    -- Eventually when I have Monocode patched
    -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'kyazdani42/nvim-tree.lua'
    -- requires = {
    --   'kyazdani42/nvim-web-devicons', -- optional, for file icons
    -- },
    -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {"akinsho/toggleterm.nvim", tag = '*'}

  use {
    "folke/trouble.nvim"
    -- requires = "kyazdani42/nvim-web-devicons",
  }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use {
    'prettier/vim-prettier',
    run = 'npm install --frozen-lockfile --production'
  }

end)
