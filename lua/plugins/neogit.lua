return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - for diff view
        "nvim-telescope/telescope.nvim",  -- optional
    },
    config = function()
        local neogit = require("neogit")
        neogit.setup({
            kind = "split",               -- opens neogit in a split
            signs = {
                -- { CLOSED, OPENED }
                section = { "", "" },
                item = { "", "" },
                hunk = { "", "" },
            },
            integrations = {
                diffview = true           -- enables diffview integration
            },
        })

        -- Set up a keybinding
        vim.keymap.set("n", "<leader>gg", ":Neogit<CR>", { silent = true, desc = "Open Neogit" })
    end,
}
