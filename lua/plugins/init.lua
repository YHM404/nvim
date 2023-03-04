return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'neoclide/coc.nvim', branch='release' }

  use 'neovim/nvim-lspconfig'

  -- let's get Rusty!!!!
  use 'simrat39/rust-tools.nvim'
  require('plugins/rust')

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 
  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'
  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'
  require('plugins/cmp')

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', config = "require('plugins/treesitter').setup()" }

  -- airline
  use 'vim-airline/vim-airline'

  use 'vim-airline/vim-airline-themes'

  -- hop: easymotion replacement
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- fuzzy search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- theme
  use { "ellisonleao/gruvbox.nvim" }

  -- file explorer tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  require('plugins/nvim-tree')
end)
