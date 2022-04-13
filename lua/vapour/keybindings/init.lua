vim.g.mapleader = ' '
-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})

-- Escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('v', 'jk', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('v', 'kj', '<ESC>', {noremap = true})

-- Resize window
vim.api.nvim_set_keymap('n', '<A-down>', ':resize -4<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-up>', ':resize +4<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-left>', ':vertical resize -4<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-right>', ':vertical resize +4<CR>', {noremap = true, silent = true})

-- Switch splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

-- Switch buffer
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<s-Tab>', ':bprevious<CR>', {noremap = true, silent = true})
--
-- Delete buffer
vim.api.nvim_set_keymap('n', 'q', ':bdel<CR>', {noremap = true, silent = true})

-- Visual mode -- 
-- Indent line
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = false})

-- Move text up and down
vim.api.nvim_set_keymap("v", "<A-j>", ":m .+1<CR>==", {noremap = true, silent = false})
vim.api.nvim_set_keymap("v", "<A-k>", ":m .-2<CR>==", {noremap = true, silent = false})
vim.api.nvim_set_keymap("v", "p", '"_dP', {noremap = true, silent = false})

-- Visual block --
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- enable commenting
if Vapour.plugins.nvim_comment.enabled then vim.api.nvim_set_keymap('v', '<leader>/', ':CommentToggle<cr>', {noremap = true, silent = true}) end

vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
--vim.cmd("vnoremap // y/\\V<C-R>=escape(@\",'/\')<CR><CR>")
