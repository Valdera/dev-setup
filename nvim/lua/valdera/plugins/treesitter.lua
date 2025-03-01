return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true
      },
      indent = { enable = true },
      autotag = {
        enable = true
      }, 
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "gitignore",
        "gomod",
        "gosum",
        "graphql",
        "bash",
        "lua",
        "vim",
        "groovy",
        "dockerfile",
        "gitignore",
        "angular",
        "php",
        "c_sharp",
        "cmake",
        "clojure",
        "ruby",
        "ssh_config",
        "toml",
        "query",
        "vimdoc",
        "c",
        "java",
        "go",
        "cpp",
        "c",
        "python",
        "editorconfig",
        "elixir",
        "erlang",
        "gleam",
        "kotlin",
        "make",
        "regex",
        "sql",
        "terraform",
        "tmux",
        "vue",
        "scss",
        "rust",
        "bash",
        "scala"
      },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}
