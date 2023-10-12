if vim.g.loaded_roll then
  return
end


vim.api.nvim_create_autocmd({ "UIEnter" }, {
  callback = function()
    vim.opt.background = "light"
    vim.cmd("colorscheme default")
    vim.g.loaded_roll = true
    repeat
      require("roll").roll()
    until vim.opt.background._value == "dark"
  end,
})
