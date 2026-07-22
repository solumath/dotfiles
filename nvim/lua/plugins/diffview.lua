return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview open" },
    {
      "<leader>gh",
      function()
        local path = vim.api.nvim_buf_get_name(0)
        -- extract real path from diffview buffer names like diffview:/.../.git/:0:/real/path
        path = path:match("^diffview:.+%:%d+%:(.+)$") or path
        vim.cmd("DiffviewFileHistory " .. vim.fn.fnameescape(path))
      end,
      desc = "Diffview file history",
    },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview repo history" },
  },
}
