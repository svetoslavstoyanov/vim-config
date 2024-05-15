return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  depedencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        side = 'right',
        width = 50,
      },
    }
  end,
}
