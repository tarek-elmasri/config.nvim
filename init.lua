vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--  To check the current status of your plugins, run
--    :Lazy
--  To update plugins you can run
--    :Lazy update
require('lazy').setup {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  opts = {},

  { 'numToStr/Comment.nvim', opts = {} },

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
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

  'ThePrimeagen/vim-be-good',
  'prisma/vim-prisma',

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

  { import = 'custom.plugins' },
}
-- },{
--     ui = {
--       -- If you are using a Nerd Font: set icons to an empty table which will use the
--       -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
--       icons = vim.g.have_nerd_font and {} or {
--         cmd = '⌘',
--         config = '🛠',
--         event = '📅',
--         ft = '📂',
--         init = '⚙',
--         keys = '🗝',
--         plugin = '🔌',
--         runtime = '💻',
--         require = '🌙',
--         source = '📄',
--         start = '🚀',
--         task = '📌',
--         lazy = '💤 ',
--       },
--     },
--   },
--
