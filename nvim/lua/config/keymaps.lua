-- Disable the mouse
vim.opt.mouse = ""

-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.o.statuscolumn = "%s %l %r"

-- Enable cursorline
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#1c1536' })

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indentation
vim.opt.smartindent = true

-- Word Wrap
vim.opt.wrap = false

-- Lengthy undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- We like colors :)
vim.opt.termguicolors = true

-- Misc
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })


-- Allows highlighting in visual mode and
-- moving the entire selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center screan when navigating or searching
vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ???? Need to look this one up again
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Remapping y so it always copies to clipboard
-- vim.keymap.set("n", "y", "\"+y")
-- vim.keymap.set("v", "y", "\"+y")
-- vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("v", "<leader>cp", "\"+y")

-- Delete to black hole register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- All escapes are escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- We dont like this
vim.keymap.set("n", "Q", "<nop>")

-- Go to next and center page
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Snappy replace all
vim.keymap.set("n", "<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Make the current file executable! Very cool if I remember this exists
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Get to normal mode in terminal window
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Reload files automatically if something external like git changes
-- The file.
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

vim.api.nvim_set_keymap('n', '<F5>', ':Gitsigns preview_hunk<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>blame', ':Gitsigns toggle_current_line_blame<CR>', { noremap = true, silent = true })


