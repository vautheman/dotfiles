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
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- Colorscheme
  use { "bluz71/vim-nightfly-colors", as = "nightfly", branch = 'legacy' }
    
  -- comment with gc
  use("numToStr/Comment.nvim")

  -- file explorer
  use('preservim/nerdtree')

  -- Icons
  use("kyazdani42/nvim-web-devicons")

  -- Status line
  use("nvim-lualine/lualine.nvim")

  -- Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  -- Snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  -- Managing & Installing lsp
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- configuring lsp servers
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({"glepnir/lspsaga.nvim", branch = "main"})
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
