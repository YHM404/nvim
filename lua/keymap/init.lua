vim.g.mapleader = ' '

local keymap_opts = { buffer = buffer }

-- Goto previous/next diagnostic warning/error
vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)

require('keymap/coc')
require('keymap/rust')
require('keymap/hop')
require('keymap/telescope')
require('keymap/nvim-tree')
