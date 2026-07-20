vim.pack.add({
    "https://github.com/MagicDuck/grug-far.nvim",
})

require("grug-far").setup({
    -- options, see Configuration section below
    -- there are no required options atm
})

vim.keymap.set("n", "<leader>sg", "<cmd>GrugFar<CR>", { desc = "Search & Replace" })

