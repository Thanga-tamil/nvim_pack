
vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })

vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/Saghen/blink.lib',
  'https://github.com/Saghen/blink.cmp',
})

require('mini.basics').setup()
require('mini.surround').setup()

require("plugins.colorscheme")
require("plugins.treesitter")
require("plugins.undotree")
require("plugins.telescope")
require("plugins.keymaps")
require("plugins.filetree")

require("mason").setup()
vim.lsp.enable({ 'lua_ls', 'gopls' })

require("blink.cmp").setup({
  sources = {
    default = { "lsp", "path", "buffer" },
  },
})
