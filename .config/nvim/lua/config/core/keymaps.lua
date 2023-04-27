vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps

-- First param (n:normal, v:visual, i:insert)
-- Two param = Shorcut keyboard (C = Ctrl)
-- Three param = result command

-- NERDTree Plugin
keymap.set("n", "<C-f>", "<Cmd>NERDTreeFocus<CR>")
keymap.set("n", "<C-c>", "<Cmd>NERDTreeClose<CR>")
