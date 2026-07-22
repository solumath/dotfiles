return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    keys = {
      { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
    },
    opts = {
      enabled = true,
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" },
        defer_save = { "InsertLeave", "TextChanged" },
        cancel_deferred_save = { "InsertEnter" },
      },
      condition = nil,
      write_all_buffers = false,
      noautocmd = false,
      lockmarks = false,
      debounce_delay = 3000,
      debug = false,
    },
  },
}
