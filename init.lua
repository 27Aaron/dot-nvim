local opt = vim.opt

-- global options
opt.signcolumn = 'yes'                      -- always show signcolumn
opt.number = true                           -- show line numbers
opt.relativenumber = true                   -- show relative line numbers

-- Clipboard & Mouse
opt.mouse:append 'a'                        -- enable mouse support
opt.clipboard:append 'unnamedplus'          -- use system clipboard

