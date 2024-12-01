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
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "Alexis12119/nightly.nvim",
    lazy = true,
  },
  {
    "arturgoms/moonbow.nvim"
  },
  {
    "rose-pine/neovim",
  },

  {
    "marko-cerovac/material.nvim",
    lazy = true,
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },

  {
    "rmehri01/onenord.nvim",
    lazy = true,
  },

  {
    "Mofiqul/vscode.nvim",
    lazy = true,
  },

  {
    "navarasu/onedark.nvim",
    lazy = true,
  },

  {
    "tanvirtin/monokai.nvim",
    lazy = true,
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = true,
  },

  {
    "JoosepAlviste/palenightfall.nvim",
    lazy = true,
  },

  {
    "bluz71/vim-nightfly-colors",
    lazy = true,
  },
}
