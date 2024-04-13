return {

  -- markdown preview
  {
    'iamcco/markdown-preview.nvim',
    config = function()
      vim.g.mkdp_auto_start = 1 -- Set mkdp_auto_start option to 0
    end,
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  -- markdown preview
  vim.api.nvim_set_keymap('n', '<leader>m', ':MarkdownPreviewToggle<CR>', { desc = 'start [M]arkdown preview' }),
}
