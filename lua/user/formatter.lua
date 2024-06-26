local conform = require("conform")

local opts = {
  formatters = {},
  -- The default formatter can be specified here
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "biome" } },
    typescript = { { "prettierd", "biome" } },
    javascriptreact = { { "prettierd", "biome" } },
    typescriptreact = { { "prettierd", "biome" } },
    svelte = { { "prettierd", "biome" } },
  },
}

conform.setup(opts)

vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  conform.format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
