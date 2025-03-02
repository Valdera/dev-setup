return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap_go = require("dap-go")

    dap_go.setup()

    vim.keymap.set("n", "<leader>dgt", function()
      dap_go.debug_test()
    end, { desc = "Debug tests" })
    vim.keymap.set("n", "<leader>dgl", function()
      dap_go.debug_last_test()
    end, { desc = "Debug last test" })
  end,
}
