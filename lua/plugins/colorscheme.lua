-- ################################################################################
-- #                                                                              #
-- #                                  COLORSCHEME                                 #
-- #                 NOTE: Just for adding colorschem plugins                     #
-- #                                                                              #
-- ################################################################################

return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "",
        palette_overrides = {},
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
