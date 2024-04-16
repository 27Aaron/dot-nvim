return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_proxy = 'http://127.0.0.1:6152'
  end,
}