return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'folke/tokyonight.nvim',
  -- 'catppuccin/nvim',
  -- 'EdenEast/nightfox.nvim',
  -- 'scottmckendry/cyberdream.nvim',
  -- 'rose-pine/neovim',
  priority = 1000, -- make sure to load this before all the other start plugins
  -- opts = {
  --   transparent = true,
  --   styles = {
  --     sidebars = 'transparent',
  --     floats = 'transparent',
  --   },
  -- },
  init = function()
    -- Load the colorscheme here.
    -- vim.cmd.colorscheme 'tokyonight-moon'
    vim.cmd.colorscheme 'tokyonight-night'
    -- vim.cmd.colorscheme 'nightfox'
    -- vim.cmd.colorscheme 'terafox'
    -- vim.cmd.colorscheme 'carbonfox'
    -- vim.cmd.colorscheme 'cyberdream'
    -- vim.cmd.colorscheme 'catppuccin-mocha'
    -- vim.cmd.colorscheme 'rose-pine'
    -- local time = os.date '*t'
    -- if time.hour >= 11 and time.hour < 20 then
    --   vim.cmd.colorscheme 'catppuccin-macchiato'
    --   -- vim.cmd.colorscheme 'tokyonight-moon'
    -- else
    --   vim.cmd.colorscheme 'catppuccin-mocha'
    --   -- vim.cmd.colorscheme 'tokyonight-night'
    -- end
    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
}
