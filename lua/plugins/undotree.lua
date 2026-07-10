vim.pack.add({
  "https://github.com/jiaoshijie/undotree",
})

vim.keymap.set("n", "<leader>u", function()
  require("undotree").toggle()
end, { desc = "Toggle UndoTree" })
