return {
    "akinsho/bufferline.nvim",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        require('bufferline').setup({
            options = {
                indicator = {
                    style = 'underline',
                },
            },
        })
    end,
  }