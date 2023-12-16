return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    return {
      defaults = {
        layout_strategy = 'flex',
        layout_config = {
          horizontal = { prompt_position = "bottom"},
          vertical = { mirror = false},
          width = 0.99,
          height = 0.99,
          preview_cutoff = 20,
        },
      },
    }
  end,
}
