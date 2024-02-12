local ensure_packer = function() 
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- theme
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }
}
  use 'nvim-treesitter/nvim-treesitter'  --highlight
  use 'p00f/nvim-ts-rainbow'             --{} 
  use{
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig"
  }                         --lsp
  -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
---
  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号
  use "gko/vim-coloresque" -- 颜色高亮

  use {
    'nvim-telescope/telescope.nvim',tag = '0.1.1', -- file search
    requires ={ {'nvim-lua/plenary.nvim'} }
  }
 -- AI 
 -- use "github/copilot.vim" -- copilot
  use {
        'Exafunction/codeium.vim', --codeium
        requires = {
            'nvim-lua/plenary.nvim',
            "hrsh7th/nvim-cmp",
        }
    }
--hal库

----------------------------------
  if packer_bootstrap then
    require('packer').sync()
  end
end)
