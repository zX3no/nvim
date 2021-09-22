require'mapx'.setup {global = true}

-- Options
local g = vim.g
g.mapleader = " "
g.better_escape_shortcut = {'jk', 'kj'}

nnoremap('<Leader><Space>', ':NvimTreeToggle<CR>')
nnoremap('<Leader>x', ':q!<CR>')
nnoremap('<Leader>f', ':Telescope find_files<CR>')
nnoremap('<Leader>d', ':Telescope live_grep<CR>')

-- Escape turns off search highlighting
nnoremap("<Esc>", ":noh <CR>")

-- Bufferline
nnoremap('<TAB>', ":BufferLineCycleNext <CR>")
nnoremap('<S-TAB>', ":BufferLineCyclePrev <CR>")
nnoremap('<c-h>', "<C-w>h")
nnoremap('<c-l>', "<C-w>l")
nnoremap('<c-k>', "<C-w>k")
nnoremap('<c-j>', "<C-w>j")
