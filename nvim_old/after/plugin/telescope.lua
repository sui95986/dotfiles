vim.g.mapleader = " "
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files({
        hidden = false,
        file_ignore_patterns = {
            ".git/",
            ".cache",
            "node_modules",
            "%.zip"
        },
    })
end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Git Files' })
vim.keymap.set('n', '<leader>sf', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') })
end, { desc = 'Telescope find files' })
require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        }
    }
})
