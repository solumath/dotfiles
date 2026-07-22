-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("User", {
  pattern = "AutoSaveWritePost",
  group = vim.api.nvim_create_augroup("autosave", {}),
  callback = function(opts)
    if opts.data.saved_buffer ~= nil then
      vim.notify("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"), vim.log.levels.INFO)
    end
  end,
})
