-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "  -- 设置 LEADER 键为空格
-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
-- 查找跳转自动居中
map('n', '=', 'nzz', opts)
map('n', '-', 'Nzz', opts)

-- 快速移动
map('n', 'H', '6h', opts)
map('n', 'J', '6j', opts)
map('n', 'K', '6k', opts)
map('n', 'L', '6l', opts)
map('n', '<C-j>', '<C-d>', opts)
map('n', '<C-k>', '<C-u>', opts)

-- 快速保存退出
map('n', 'S', ':w<CR>', opts)
map('n', 'Q', ':q<CR>', opts)
map('n', ';', ':', { noremap = true })

-- 分屏快捷键
map('n', '<leader>sl', ':set splitright<CR>:vsplit<CR>', opts)
map('n', '<leader>sh', ':set nosplitright<CR>:vsplit<CR>', opts)
map('n', '<leader>sj', ':set splitright<CR>:split<CR>', opts)
map('n', '<leader>sk', ':set nosplitright<CR>:split<CR>', opts)

map('n', '<leader>l', '<C-w>l', opts)
map('n', '<leader>h', '<C-w>h', opts)
map('n', '<leader>j', '<C-w>j', opts)
map('n', '<leader>k', '<C-w>k', opts)

-- Buffer切换
map('n', '<leader>1', ':1b<CR>', opts)
map('n', '<leader>2', ':2b<CR>', opts)
map('n', '<leader>3', ':3b<CR>', opts)
map('n', '<leader>4', ':4b<CR>', opts)
