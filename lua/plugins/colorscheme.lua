vim.pack.add({
  "https://github.com/rose-pine/neovim",
})

require("rose-pine").setup({
  variant = "moon", -- "main", "moon", or "dawn"
})

vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", {
  bg = "none",
})

vim.api.nvim_set_hl(0, "NormalFloat", {
  bg = "none",
})
