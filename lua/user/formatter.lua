local formatter = require('formatter')
local util = require('formatter.util')

local function prettier()
  return {
    exe = 'prettier',
    args = {
      '--config-precedence',
      'prefer-file',
      '--single-quote',
      '--no-bracket-spacing',
      '--prose-wrap',
      'always',
      '--arrow-parens',
      'always',
      '--trailing-comma',
      'all',
      '--no-semi',
      '--stdin-filepath',
      util.escape_path(util.get_current_buffer_file_path()),
    },
    stdin = true,
  }
end

local options = {
  filetype = {
    javascript = { prettier },
    typescript = { prettier },
    javascriptreact = { prettier },
    typescriptreact = { prettier },
    vue = { prettier },
    ['javascript.jsx'] = { prettier },
    ['typescript.tsx'] = { prettier },
    markdown = { prettier },
    css = { prettier },
    json = { prettier },
    jsonc = { prettier },
    scss = { prettier },
    less = { prettier },
    yaml = { prettier },
    graphql = { prettier },
    html = { prettier },
  }
}

formatter.setup(options)
