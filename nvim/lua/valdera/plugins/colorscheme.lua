return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent"
      },
      on_colors = function(colors)
        colors.bg_dark = colors.none
        colors.bg_float = colors.none
        colors.bg_sidebar = colors.none
        colors.bg_statusline = colors.none
      end
    })

    vim.cmd("colorscheme tokyonight")
  end
}
