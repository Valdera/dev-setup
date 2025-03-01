return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Load header from separate file
    --dashboard.config.layout[2] = {
      --type = "text",
      --pval = require("valdera.assets.header"),  -- Load from header.lua
      --opts = { position = "center", hl = "Type" },
    --}
    dashboard.config.layout[2] = require("valdera.assets.header")

    -- Dashboard Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Apply Config
    alpha.setup(dashboard.config)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end
}
