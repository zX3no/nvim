require("plugins")
require("config")
require("keybindings")

local g = vim.g
local opt = vim.opt

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
-- TODO this is broken af
g.minimap_width = 10
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1

-- Clipboard
opt.clipboard = "unnamed"

-- TODO 

-- Auto destroy minimap and chadtree when closing buffer

-- Formatting does not work

-- Glow does not work

-- augroup fmt
--   autocmd!
--   autocmd BufWritePre * undojoin | Neoformat
-- augroup END
