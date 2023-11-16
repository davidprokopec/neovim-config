require 'nvim-treesitter.configs'.setup(
  {
    ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua" },

    sync_install = false,

    auto_install = true,

    highlight = {
      enable = true,
    },

    autopairs = {
      enable = true,
    },

    context = {
        enable = true, -- Enable the plugin
        throttle = true, -- Throttle updates to reduce lag
    },

    indent = { enable = true, disable = { "python", "css" } },
  }
)

