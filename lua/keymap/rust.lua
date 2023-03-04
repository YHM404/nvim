local keyset = vim.keymap.set

keyset("n", "me", ":CocCommand rust-analyzer.expandMacro<CR>", {silent = true})
