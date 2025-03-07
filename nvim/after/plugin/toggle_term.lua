-- vim.opt.termguicolors = true;
require("toggleterm").setup({
    size = function(term)
        if term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
        return 15
    end,
    hide_numbers = false,
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = {
        border = 'curved',
        title_pos = 'center',
        title = 'Change Me',
        winblend = 9,
    },
})

local Terminal = require("toggleterm.terminal").Terminal

-- Create a persistent terminal for spotify_player
local spotify_term = Terminal:new({
  cmd = "spotify_player",
  direction = "float", -- Change to "float" if you prefer a floating window
  hidden = true,
  size = 15 -- Adjust to match your toggleterm config
})

-- Map <C-p> to toggle spotify_player
vim.keymap.set("n", "<C-p>", function()
  spotify_term:toggle()
end, { desc = "Toggle Spotify TUI terminal" })

vim.keymap.set("t", "<C-p>", function()
  spotify_term:toggle()
end, { desc = "Toggle Spotify TUI terminal" })

-- Create 3 persistent terminals
local termOne = Terminal:new({
  direction = "float", -- Change to "float" if you prefer a floating window
  hidden = true,
  size = 15, -- Adjust to match your toggleterm config
})

vim.keymap.set("n", "<leader>t1", function()
    termOne:toggle()
end, { desc = "Toggle terminal one" })

vim.keymap.set("t", "<leader>t1", function()
    termOne:toggle()
end, { desc = "Toggle terminal one" })

local termTwo = Terminal:new({
  direction = "float", -- Change to "float" if you prefer a floating window
  hidden = true,
  size = 15 -- Adjust to match your toggleterm config
})

vim.keymap.set("n", "<leader>t2", function()
    termTwo:toggle()
end, { desc = "Toggle terminal two" })

vim.keymap.set("t", "<leader>t2", function()
    termTwo:toggle()
end, { desc = "Toggle terminal two" })

local termThree = Terminal:new({
  direction = "float", -- Change to "float" if you prefer a floating window
  hidden = true,
  size = 15 -- Adjust to match your toggleterm config
})

vim.keymap.set("n", "<leader>t3", function()
    termThree:toggle()
end, { desc = "Toggle terminal three" })

vim.keymap.set("t", "<leader>t3", function()
    termThree:toggle()
end, { desc = "Toggle terminal three" })

