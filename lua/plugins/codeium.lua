-- ################################################################################
-- #                                                                              #
-- #                                 CODEIUM                                      #
-- #     NOTE: AI completion for coding. use alt [ or ] to select alternative     #
-- #                                                                              #
-- ################################################################################

return {
  'Exafunction/codeium.vim',
  -- enabled = false,
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}

