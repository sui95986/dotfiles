return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        follow_current_file = true, -- Keeps focus on the current file
        hijack_netrw = true,
        cwd_target = "project", -- 🔥 Always set Neo-Tree's root to the project root
      },
    },
  },
}
