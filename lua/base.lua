local opt = vim.opt

-- global options
opt.signcolumn = 'yes'                          -- always show signcolumn
opt.number = true                               -- show line numbers
opt.relativenumber = true                       -- show relative line numbers

-- window options
opt.scrolloff = 5 							    -- keep 5 lines above/below cursor
opt.sidescrolloff = 5 					     	-- keep 5 lines left/right of cursor

opt.tabstop = 2 							    -- tab width
opt.shiftwidth = 2 						   	    -- number of spaces to use for autoindent
opt.expandtab = true 							-- use spaces instead of tabs
opt.autoindent = true 							-- maintain indent of current line

opt.ignorecase = true							-- ignore case when searching
opt.smartcase = true							-- ignore case if search pattern is all lowercase

-- Clipboard & Mouse
opt.mouse:append 'a'                            -- enable mouse support
opt.clipboard:append 'unnamedplus'              -- use system clipboard

-- enable true colors
opt.termguicolors = true

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
	  vim.highlight.on_yank()
	end,
})