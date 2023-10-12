if vim.g.loaded_roll then
  return
end

vim.g.loaded_roll = true

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    repeat
      require("roll").roll()
    until vim.opt.background._value == "dark"
  end,
})
