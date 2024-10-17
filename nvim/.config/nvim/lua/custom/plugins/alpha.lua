return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local dashboard = require 'alpha.themes.dashboard'

    local logo = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
    }
    dashboard.section.header.val = logo

    dashboard.section.buttons.val = {
      dashboard.button('sf', ' ' .. 'Search Files', ':Telescope find_files <CR>'),
      dashboard.button('sg', ' ' .. 'Search by Grep', ':Telescope grep_string <CR>'),
      dashboard.button('sh', ' ' .. 'Search Help', ':Telescope help_tags <CR>'),
      dashboard.button('sk', ' ' .. 'Search Keymaps', ':Telescope keymaps <CR>'),
      dashboard.button('ss', ' ' .. 'Search Select Telescope', ':Telescope builtin <CR>'),
      dashboard.button('sd', ' ' .. 'Search Diagnostics', ':Telescope diagnostics <CR>'),
      dashboard.button('s.', ' ' .. 'Search Recent Files', ':Telescope oldfiles <CR>'),
      dashboard.button('sn', ' ' .. 'Search Neovim Files', ':Telescope find_files search_dirs=~/.config/nvim <CR>'),
      dashboard.button('sx', ' ' .. 'Search Hidden Files', ':Telescope find_files hidden=true no_ignore=true <CR>'),
    }
    return dashboard
  end,
  config = function(_, dashboard)
    require('alpha').setup(dashboard.opts)
  end,
}
