-- ################################################################################
-- #                                                                              #
-- #                                   INIT ROOT                                  #
-- #                                                                              #
-- #                                                                              #
-- ################################################################################

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- LazyVim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set space bar as Leader Key and termguicolors as true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.termguicolors = true

-- Function to make Neovim UI elements transparent
local function make_transparent()
  -- Main editor area
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
  -- Floating windows (like autocomplete)
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })
  -- Non-current windows
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
  -- Left-side sign column where git/diagnostic symbols appear
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
  -- Special end-of-buffer lines (~)
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
  -- Line number column
  vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", ctermbg = "NONE" })
  -- Line number for current line
  vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE", ctermbg = "NONE" })
  -- Vertical split lines
  vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", ctermbg = "NONE" })
  -- Folded line highlighting
  vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", ctermbg = "NONE" })
  -- Column where fold markers appear
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE", ctermbg = "NONE" })
  -- Status line of current window
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", ctermbg = "NONE" })
  -- Status line of non-current windows
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", ctermbg = "NONE" })
end

-- Neovide font fix
vim.opt.guifont = { "FiraCode Nerd Font:h7" }

-- Lazy plugins
require('lazy').setup('plugins')

-- Options
require('options.options')

-- Keybindings
require('keymaps.keymaps')

-- Autocmds
require('autocmds.autocmds')

-- Apply transparency after colorscheme to override its background settings
make_transparent()
