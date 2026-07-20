vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
})

vim.keymap.set("n", "<leader>f", function()
  require("telescope.builtin").find_files()
end, {
  desc = "Find files",
})

vim.keymap.set("n", "<leader>g", function()
  local search_term = vim.fn.input("Grep > ")
  require("telescope.builtin").grep_string({
    search = search_term,
  })
end, {
  desc = "Grep string",
})
