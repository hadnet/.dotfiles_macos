-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- using packer.nvim
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use 'JulesWang/css.vim'
  use 'cakebaker/scss-syntax.vim'
  use 'akinsho/toggleterm.nvim'
  use {'folke/which-key.nvim', 
    config = function()
      require("which-key").setup {
        plugins = {
          registers = false,
        }
      }
      end
  }
  use {'styled-components/vim-styled-components'}
  use {'tpope/vim-fugitive'}
  use {'windwp/nvim-ts-autotag'}
  use 'shaunsingh/nord.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'marko-cerovac/material.nvim'
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'tpope/vim-eunuch'
  use 'jparise/vim-graphql'
  use {'tami5/lspsaga.nvim'}
  use {'mg979/vim-visual-multi'}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{current_line_blame = true}
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {'mhartington/formatter.nvim'}
  use "jose-elias-alvarez/null-ls.nvim"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'tpope/vim-commentary'
  use 'glepnir/dashboard-nvim'
  use 'navarasu/onedark.nvim'
  use 'metakirby5/codi.vim'
  use 'pantharshit00/vim-prisma'
  use 'wakatime/vim-wakatime'
  use 'dominikduda/vim_current_word'
  use {
    'RRethy/vim-illuminate',
    config = function ()
      vim.cmd [[
        augroup illuminate_augroup
          autocmd!
          autocmd VimEnter * hi link illuminatedWord Visual
        augroup END
      ]]
    end,
  }
end)

