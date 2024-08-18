return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function()
    return {
      filesystem = {
        window = {
          width = 30,
          mappings = {
            ["o"] = false,
            ["oc"] = false,
            ["od"] = false,
            ["og"] = false, 
            ["om"] = false,
            ["on"] = false,
            ["os"] = false, 
            ["ot"] = false,
            o = {"open", nowait = true},
            ["J"] = function(state)
              local tree = state.tree
              local node = tree:get_node()
              local siblings = tree:get_nodes(node:get_parent_id())
              local renderer = require('neo-tree.ui.renderer')
              renderer.focus_node(state, siblings[#siblings]:get_id())
            end,
            ["K"] = function(state)
              local tree = state.tree
              local node = tree:get_node()
              local siblings = tree:get_nodes(node:get_parent_id())
              local renderer = require('neo-tree.ui.renderer')
              renderer.focus_node(state, siblings[1]:get_id())
            end,
            ["P"] = function(state)
              local node = state.tree:get_node()
              require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
            end
          }
        }
      },
  }
  end,
}

