return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nix = { "alejandra" },
      cs = { "dotnet_custom" },
    },
    formatters = {
      dotnet_custom = {
        command = "dotnet format",
        args = { "-- include %" },
      },
    },
  },
}
