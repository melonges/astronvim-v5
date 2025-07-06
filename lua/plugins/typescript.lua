return {
  { "jose-elias-alvarez/typescript.nvim", lazy = true }, -- add lsp plugin
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
        }
      },
      skip_setup = { "tsserver" },
      setup_handlers = {
        -- add custom handler
        tsserver = function(_, opts) require("typescript").setup { server = opts } end,
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = { "typescript-language-server" }, -- automatically install lsp
    },
  },
}

