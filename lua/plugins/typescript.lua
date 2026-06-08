return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      treesitter = { ensure_installed = { "javascript", "typescript", "tsx" } },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      features = {
        signature_help = false,
        codelens = false,
        inlay_hints = false,
      },
      formatting = {
        format_on_save = {
          enabled = false,
        },
      },
      servers = { "ts_ls" },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed or {}, {
        "typescript-language-server",
      })
    end,
  },
}
