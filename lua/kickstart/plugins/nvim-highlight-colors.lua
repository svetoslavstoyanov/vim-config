return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup {
      render = 'background', -- 'foreground' | 'virtual'
      enable_tailwind = true,
    }
  end,
}
