return {
  "mfussenegger/nvim-dap",
  opts = function()
    require("dap").adapters["netcoredbg"] = {
      type = "executable",
      -- Use globally installed netcoredbg for ARM machines
      command = vim.trim(vim.fn.system("which netcoredbg")),
      args = { "--interpreter=vscode" },
    }
  end,
}
