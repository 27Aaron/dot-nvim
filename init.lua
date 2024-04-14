local opt = vim.opt

-- global options
opt.signcolumn = 'yes'                      -- always show signcolumn
opt.number = true                           -- show line numbers
opt.relativenumber = true                   -- show relative line numbers

-- Clipboard & Mouse
opt.mouse:append 'a'                        -- enable mouse support
opt.clipboard:append 'unnamedplus'          -- use system clipboard

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
	  vim.highlight.on_yank()
	end,
})

vim.g.mapleader = " "			     -- set leader key to space

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

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	{ "neanias/everforest-nvim", version = false, lazy = false, priority = 1000, },
  { cmd = "Telescope", 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
	{
		event = "VeryLazy",
		"williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = function()
			require("mason").setup()
		end,
	},
  })

  vim.cmd.colorscheme("everforest")
