vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  {
    'nvim-tree/nvim-tree.lua',
    Lazy = false,
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {
        respect_buf_cwd = true, -- Ensure nvim-tree respects current buffer's directory
        hijack_cursor = true, -- Hijack cursor to the file being edited
        view = {
          width = 20, -- Set width of nvim-tree window
        },
      }
    end,
  },
  -- Keybind to toggle nvim-tree
  -- vim.keymap.set('n', '-', ':NvimTreeToggle<cr>'),
}
