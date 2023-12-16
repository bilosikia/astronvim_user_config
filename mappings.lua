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
    -- terminal
    ["<C-/>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" }
  },

  v = {
    -- comment
    ["<leader>m"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment for selection",
    },
  },
  t = {
    -- terminal
    ["<C-/>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<esc>"] = false,
  },
}
