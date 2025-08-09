return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator_icon = "",
      show_buffer_close_icons = false,
      show_buffer_icons = false,
      style_preset = require("bufferline").style_preset.minimal,
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
    local wk = require("which-key")
    for i = 1, 9 do
      wk.add({
        "<leader>" .. i,
        function()
          require("bufferline").go_to(i, true)
        end,
        hidden = true,
      })
    end

    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
