-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  -- Allows toggling soft wrapping in the current buffer
  --   :set wrap?  to check the current wrap mode
  --   yow         toggle soft wrap/unwrap modes
  {
    'andrewferrier/wrapping.nvim',
    config = function()
      require('wrapping').setup()
    end,
  },

  -- Mason prerequisite for managing LSP stuff
  {
    -- there is already 'mason-org/mason.nvim' plugin already presented in the
    -- root `init.lua` file, so not sure how it's gonna get conflicted with this
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = { 'gopls' },
    },
  },
}

return plugins
