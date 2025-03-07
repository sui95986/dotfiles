-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true,
  },
})

-- Ensure NvimTree is not opened by default
vim.g.nvim_tree_auto_open = 0 -- Just to be sure
vim.g.nvim_tree_auto_close = 0
vim.g.nvim_tree_auto_ignore_ft = { "startify", "dashboard" } -- Ignore startup screens

-- Function to toggle NvimTree
vim.api.nvim_create_user_command('Tree', function()
    require('nvim-tree.api').tree.toggle()
end, {})

-- Optionally, you can also set a keybinding
vim.keymap.set('n', '<leader>st', ':Tree<CR>', { noremap = true, silent = true })
