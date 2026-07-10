vim.pack.add({
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Keep netrw enabled.
-- Do NOT set:
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  hijack_netrw = false,      -- Don't replace netrw
  disable_netrw = false,     -- Keep netrw enabled

  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
      },
    },
  },
})

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", {
  silent = true,
  desc = "Toggle NvimTree",
})
