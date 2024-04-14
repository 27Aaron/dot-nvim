-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup({
-- 	"folke/which-key.nvim",
-- 	{ "folke/neoconf.nvim", cmd = "Neoconf" },
-- 	"folke/neodev.nvim",
--   { cmd = "Telescope", 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
-- 	{
-- 		event = "VeryLazy",
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",
--     "neovim/nvim-lspconfig",
-- 		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
-- 		config = function()
-- 			require("mason").setup()
--       require("mason-lspconfig").setup()
-- 		end,
-- 	},
--   })

require 'base'
require 'keymap'
require('lazy').setup 'plugins'