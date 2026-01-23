-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.recipes.ai" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.docker.lazydocker" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.game.leetcode-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- { import = "astrocommunity.pack.hurl" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.completion.supermaven-nvim" },
}
