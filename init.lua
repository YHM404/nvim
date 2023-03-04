require('plugins/init')
require('keymap/init')


-- 在左侧显示行号
vim.opt.number = true

-- theme
vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])

-- Format on save
local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 4000 })
  end,
  group = format_sync_grp,
})
