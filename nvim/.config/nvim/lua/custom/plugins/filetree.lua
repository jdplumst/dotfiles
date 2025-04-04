-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  opts = {
    window = {
      position = 'right',
      width = 30,
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  -- config = function()
  --   require('neo-tree').setup {}
  -- end,
}
