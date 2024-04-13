return {

  -- {
  --   'Jezda1337/nvim-html-css',
  --   enable = true,
  --   filetypes = { 'html', 'htmldjango' },
  --   event = 'InsertEnter',
  --   dependencies = { -- without dependencies wont work
  --     'nvim-treesitter/nvim-treesitter',
  --     'nvim-lua/plenary.nvim',
  --   },
  --   config = function()
  --     local cmp = require 'cmp'
  --     local cmp_config = cmp.get_config()
  --     local html_css_source = {
  --       name = 'html-css',
  --       option = {
  --         enable_on = { 'html', 'htmldjango' },
  --         file_extensions = { 'css', 'sass', 'less' },
  --         style_sheets = {
  --           -- example of remote styles, only css no js for now
  --           'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css',
  --           'https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css',
  --         },
  --       },
  --     }
  --     table.insert(cmp_config.sources, html_css_source)
  --     cmp.setup(cmp_config)
  --     require('html-css'):setup()
  --   end,
  -- },
  { 'nvim-lua/plenary.nvim' },
  { 'sharkdp/fd' },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        '*', -- Highlight all files, but customize some others.
        css = { css = true, css_fn = true }, -- Enable parsing rgb(...) functions in css.
        html = { css = true, css_fn = true }, -- Disable parsing "names" like Blue or Gray
      }
    end,
  },
}
