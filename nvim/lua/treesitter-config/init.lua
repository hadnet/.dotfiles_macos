require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = false,
    disable = {},
  },
  rainbow = {
    enable = true,
    extended_node = false,
    max_file_lines = nil,
  },
  ensure_installed = {
    "html",
    "css",
    "scss",
    "tsx",
    "typescript",
    "json",
    "yaml",
    "swift",
  },
  autopairs = {
    enable = true
  },
  context_commentstring = {
    enable = true
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {"javascript", "typescript.tsx"}

