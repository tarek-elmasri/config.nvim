return {
    -- Fuzzy Finder (files, lsp, etc)
     'nvim-telescope/telescope.nvim',
     event = 'VimEnter',
     branch = '0.1.x',
     dependencies = {
       'nvim-lua/plenary.nvim',
       { -- If encountering errors, see telescope-fzf-native README for installation instructions
         'nvim-telescope/telescope-fzf-native.nvim',
  
         -- `build` is used to run some command when the plugin is installed/updated.
         -- This is only run then, not every time Neovim starts up.
         build = 'make',
  
         -- `cond` is a condition used to determine whether this plugin should be
         -- installed and loaded.
         cond = function()
           return vim.fn.executable 'make' == 1
         end,
       },
       { 'nvim-telescope/telescope-ui-select.nvim' },
  
       -- Useful for getting pretty icons, but requires a Nerd Font.
       { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
     },
     config = function()
       require "custom.telescope"
       -- require('telescope').setup {
         -- You can put your default mappings / updates / etc. in here
         --  All the info you're looking for is in `:help telescope.setup()`
         --
         -- defaults = {
         --   mappings = {
         --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
         --   },
         -- },
         -- pickers = {}
         -- extensions = {
         --   ['ui-select'] = {
         --     require('telescope.themes').get_dropdown(),
         --   },
         -- },
       end
       }


