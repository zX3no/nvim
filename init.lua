require("plugins")
require("config")
require("keybindings")

local g = vim.g
local opt = vim.opt
local cmd = vim.api.nvim_command

-- Neovide
g.neovide_refresh_rate = 240
g.neovide_cursor_antialiasing = true
opt.guifont = "FiraCode NF:h13"

-- Dracula
g.colors_name = "Dracula"

-- Mouse
opt.mouse = "a"

-- Lines
opt.number = true
opt.relativenumber = true
opt.nu = true
opt.rnu = true

-- Scrollbar
cmd("augroup ScrollbarInit")
cmd("autocmd!")
cmd(
    "autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()")
cmd("autocmd WinEnter,FocusGained * silent! lua require('scrollbar').show()")
cmd(
    "autocmd WinLeave,BufLeave,BufWinLeave,FocusLost * silent! lua require('scrollbar').clear()")
cmd("augroup end")

g.scrollbar_shape = {head = '▎', body = '▎', tail = '▎'}

-- Neoformat
cmd("augroup fmt")
cmd("autocmd!")
cmd("autocmd BufWritePre * undojoin | Neoformat")
cmd("augroup END")

-- Clipboard
opt.clipboard = "unnamed"

-- TODO 

-- Shift hjkl for moving around Lsp menu instead of arrow keys

-- How to make files using nvim-tree

-- Need autosaver

-- Auto destroy minimap and chadtree when closing buffer

-- Formatting does not work

-- Glow does not work

