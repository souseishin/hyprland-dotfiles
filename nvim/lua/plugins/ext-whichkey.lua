return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>w", desc = "Save files" },
      {
        "<leader>W",
        group = "windows",
        proxy = "<c-w>",
        expand = function()
          return require("which-key.extras").expand.win()
        end,
      },
    },
  },
}
