require("plugins")
require("config")

local g = vim.g
local opt = vim.opt
local api = vim.api

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

-- Minimap
--TODO this is broken af
g.minimap_width = 10
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1

-- Clipboard
opt.clipboard = "unnamed"

-- Keybinds
g.mapleader = " " 
g.better_escape_shortcut = {'jk', 'kj'}

api.nvim_set_keymap('n', '<Leader><Space>', ':CHADopen<CR>', { noremap = true, silent = true})
api.nvim_set_keymap('n', '<Leader>x', ':q!<CR>', { noremap = true, silent = true})
api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true})
api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true})

-- TODO 

-- Formatting does not work

-- augroup fmt
--   autocmd!
--   autocmd BufWritePre * undojoin | Neoformat
-- augroup END