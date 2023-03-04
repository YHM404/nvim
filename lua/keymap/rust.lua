local rt = require("rust-tools")

vim.keymap.set("n", "me", rt.expand_macro.expand_macro, { buffer = bufnr })
vim.keymap.set("n", "<C-r>", rt.runnables.runnables, { buffer = bufnr })
vim.keymap.set("n", "<C-k>", function() rt.move_item.move_item(true) end, { buffer = bufnr })
vim.keymap.set("n", "<C-j>", function() rt.move_item.move_item(false) end, { buffer = bufnr })
