return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function()
      local gs = require("gitsigns")
      vim.keymap.set("n", "<M-s>", gs.stage_hunk, { desc = "Stage hunk" })
      vim.keymap.set("n", "<M-u>", gs.undo_stage_hunk, { desc = "Unstage hunk" })
      vim.keymap.set("n", "<M-r>", gs.reset_hunk, { desc = "Revert hunk" })
    end,
  },
}
