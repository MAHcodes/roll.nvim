local M = {}

local colors = vim.fn.getcompletion("", "color")
math.randomseed(os.time())

M.roll = function()
  vim.cmd("colorscheme " .. colors[math.random(1, #colors)])
end

return M
