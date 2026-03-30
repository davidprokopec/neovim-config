-- Treesiter context
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
  {
    "moll/vim-bbye",
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "ellisonleao/dotenv.nvim",
  },
  {
    "sindrets/diffview.nvim"
  }
}
