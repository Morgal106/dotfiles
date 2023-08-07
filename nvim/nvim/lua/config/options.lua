-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

function LiveServer()
  local cmd = "live-server " .. vim.fn.expand("%:p:h")
  vim.fn.jobstart(cmd, {
    on_stdout = function(_, data, _)
      local out = string.gsub(data[1], "[[^\27\155][][()#;?%d]*[A-PRZcf-ntqry=><~]", "")
      print(out)
    end,
  })
end
