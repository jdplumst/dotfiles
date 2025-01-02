return {
  'windwp/nvim-ts-autotag',
  ft = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'html',
    'astro',
  },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
