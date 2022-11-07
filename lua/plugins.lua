return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'glepnir/zephyr-nvim'

  -- nvim-tree (新增)
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use({ "williamboman/nvim-lsp-installer" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
  -- 补全引擎
  use("hrsh7th/nvim-cmp")
  -- Snippet 引擎
  use("hrsh7th/vim-vsnip")
  -- 补全源
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  use("hrsh7th/cmp-path") -- { name = 'path' }
  use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }

  use("b0o/schemastore.nvim")
end)
