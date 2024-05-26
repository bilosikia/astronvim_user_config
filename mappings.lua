return {
  n = {
    -- navigate
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>q"] = { "<cmd>confirm qall<cr>", desc = "Quit all" },
    -- neotree
    ["<leader>O"] = { "<cmd>Neotree reveal<cr>", desc = "neotree reveal" },
    -- git
    ["<leader>gd"] = { ":DiffviewOpen HEAD~<cr>", desc = "HEAD commit view" },
    -- tab
    ["<leader>tc"] = { ":tabclose<cr>", desc = "close tab" },
    -- comment
    ["<leader>m"] = {
      function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Toggle comment line",
    },
    -- telescope
    ["<leader>/"] = { function() require("telescope.builtin").live_grep() end, desc = "Find words" },
    ["<leader><leader>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    ["<leader>F"] = {
      function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end,
      desc = "Find all files",
    },
    ["<leader>d/"] = { ": Telescope dir live_grep<CR>", desc = "livegrep in dir" },
    ["<leader>d<leader>"] = { ": Telescope dir find_files<CR>", desc = "find files in dir" },
    -- terminal
    ["<C-/>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    -- past
    ["P"] = {'"0p', desc = "past with copy register"}
  },

  v = {
    -- comment
    ["<leader>m"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment for selection",
    },
    ["P"] = {'"0p', desc = "past with copy register"}
  },
  t = {
    -- terminal
    ["<C-/>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<esc>"] = false,
  },
}
