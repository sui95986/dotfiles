local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon: Add File" })
vim.keymap.set("n", "<leader>fl", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: Open Menu" })

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon: Select Slot 1" })
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon: Select Slot 2" })
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon: Select Slot 3" })
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon: Select Slot 4" })

vim.keymap.set("n", "<leader>fp", function()
  harpoon:list():prev()
end, { desc = "Harpoon: Previous File" })
vim.keymap.set("n", "<leader>fn", function()
  harpoon:list():next()
end, { desc = "Harpoon: Next File" })
