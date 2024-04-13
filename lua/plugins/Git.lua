return {
  { -- Here is a more advanced example where we pass configuration
    -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
    --    require('gitsigns').setup({ ... })
    --
    -- See `:help gitsigns` to understand what the configuration keys do
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()

        -- preview hunk changes
        vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', { desc = '[G]it preview_hunk' })
      end,
      opts = {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      },
    },
  },
  {
    '/tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', ':Git<CR>', { desc = '[G]it Status' }),
    vim.keymap.set('n', '<leader>ga', ':Git add .<CR>', { desc = '[G]it add' }),
    vim.keymap.set('n', '<leader>gp', ':Git push<CR>', { desc = '[G]it push' }),
  },
}
