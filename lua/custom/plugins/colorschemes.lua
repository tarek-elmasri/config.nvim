return {
  {
    'tjdevries/colorbuddy.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }
      vim.cmd.colorscheme 'rose-pine'
    end,
  },

  'folke/tokyonight.nvim',

  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
}
