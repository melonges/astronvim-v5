---@type LazySpec
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- return {
--   "supermaven-inc/supermaven-nvim",
--   config = function()
--     require("supermaven-nvim").setup {
--       keymaps = {
--         accept_suggestion = "<Ins>",
--         clear_suggestion = "<C-]>",
--         accept_word = "<C-j>",
--       },
--       ignore_filetypes = { cpp = true, json = true }, -- or { "cpp", }
--       log_level = "info", -- set to "off" to disable logging completely
--       -- disable_inline_completion = false, -- disables inline completion for use with cmp
--       -- disable_keymaps = false, -- disables built in keymaps for more manual control
--       condition = function() return false end, -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
--     }
--   end,
-- }

return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = { "SupermavenUseFree", "SupermavenUsePro" },
  opts = {
    keymaps = {
      accept_suggestion = "<Ins>",
      -- accept_suggestion = nil, -- handled by completion engine
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            -- set the ai_accept function
            ai_accept = function()
              local suggestion = require("supermaven-nvim.completion_preview")
              if suggestion.has_suggestion() then
                vim.schedule(function()
                  suggestion.on_accept_suggestion()
                end)
                return true
              end
            end,
          },
        },
      },
    },
  },
}
