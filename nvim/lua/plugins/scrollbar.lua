return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "kevinhwang91/nvim-hlslens",
  },
  event = "BufReadPost",
  opts = {
    handlers = {
      gitsigns = true, -- Shows git changes in the scrollbar
      search = true, -- Shows search results in the scrollbar
    },
  },
}
