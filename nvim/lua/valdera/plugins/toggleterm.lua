return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell,
        direction = "float", -- Default mode
        float_opts = {
          border = "curved",
          winblend = 3,
        },
      })

      -- Keybindings
      vim.keymap.set(
        "n",
        "<leader>trv",
        "<cmd>ToggleTerm direction=vertical<CR>",
        { noremap = true, silent = true, desc = "Open Vertical Terminal" }
      )
      vim.keymap.set(
        "n",
        "<leader>trh",
        "<cmd>ToggleTerm direction=horizontal<CR>",
        { noremap = true, silent = true, desc = "Open Horizontal Terminal" }
      )
      vim.keymap.set(
        "n",
        "<leader>trf",
        "<cmd>ToggleTerm direction=float<CR>",
        { noremap = true, silent = true, desc = "Open Floating Terminal" }
      )
      vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
    end,
  },
}
