-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.recipes.ai" },
  { import = "astrocommunity.docker.lazydocker" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.game.leetcode-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.media.cord-nvim" }
}
