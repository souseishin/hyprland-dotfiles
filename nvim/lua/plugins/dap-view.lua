return {
  {
    "igorlfs/nvim-dap-view",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    ---@module 'dap-view'
    ---@type dapview.Config
    opts = {
      winbar = {
        sections = { "watches", "scopes", "exceptions", "breakpoints", "threads", "repl", "console" },
      },
      windows = {
        terminal = {
          hide = { "go" },
        },
      },
    },
    ---@diagnostic disable-next-line: unused-local
    config = function(plugin_spec, opts)
      require("dap-view").setup(opts)
      local dap = require("dap")
      local dv = require("dap-view")

      local wk = require("which-key")
      wk.add({
        "<leader>du",
        function()
          dv.toggle(true)
        end,
        desc = "toggle dap view",
      })

      dap.listeners.before.attach["dap-view-config"] = function()
        dv.open()
        dv.show_view("scopes")
      end
      dap.listeners.before.launch["dap-view-config"] = function()
        dv.open()
        dv.show_view("scopes")
      end
      dap.listeners.before.event_terminated["dap-view-config"] = function()
        dv.close(true)
      end
      dap.listeners.before.event_exited["dap-view-config"] = function()
        dv.close(true)
      end
    end,
  },
}
