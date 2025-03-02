return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      automatic_installation = true,
      -- list of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "ts_ls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "angularls",
        "arduino_language_server",
        "bashls",
        "clangd",
        "clojure_lsp",
        "dockerls",
        "elixirls",
        "groovyls",
        "jdtls",
        "jsonls",
        "kotlin_language_server",
        "ltex",
        "pbls",
        "rust_analyzer",
        "sqls",
        "yamlls",
        "ast_grep",
        "gopls",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "gopls",
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "golines",
        "gofumpt",
        "gotests",
        "codelldb",
        "goimports",
        "clang-format",
        "autopep8",
        "sql-formatter",
        "ts-standard",
        "jq",
        "eslint_d",
        "rustfmt",
        "cmakelang",
        "golangci-lint",
        "tflint",
        "cpplint",
      },
    })
  end,
}
