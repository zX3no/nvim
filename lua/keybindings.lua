require'mapx'.setup {global = true}

-- Options
local g = vim.g
g.mapleader = " "
g.better_escape_shortcut = {'jk', 'kj'}

-- NvimTree
nnoremap('<Leader><Space>', ':NvimTreeToggle<CR>', 'silent')

-- Telescope
nnoremap('<Leader>f', ':Telescope find_files<CR>', 'silent')
nnoremap('<Leader>d', ':Telescope live_grep<CR>', 'silent')

-- Escape turns off search highlighting
nnoremap("<Esc>", ":noh <CR>", 'silent')

-- Bufferline
nnoremap('<TAB>', ":BufferLineCycleNext <CR>", 'silent')
nnoremap('<S-TAB>', ":BufferLineCyclePrev <CR>", 'silent')
nnoremap('<c-h>', "<C-w>h", 'silent')
nnoremap('<c-l>', "<C-w>l", 'silent')
nnoremap('<c-k>', "<C-w>k", 'silent')
nnoremap('<c-j>', "<C-w>j", 'silent')

-- Shortcuts
nnoremap('<Leader>x', ':q!<CR>', 'silent')
nnoremap('<c-s>', ':w<CR>', 'silent')

-- LSP
nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>', 'silent')
nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', 'silent')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', 'silent')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', 'silent')
nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>', 'silent')
nnoremap('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', 'silent')
nnoremap('<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', 'silent')
nnoremap('<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', 'silent')

-- TODO
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
