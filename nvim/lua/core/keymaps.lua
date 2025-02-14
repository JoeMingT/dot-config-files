-- Keybinding for Vim
-- Exit Insert Mode
vim.keymap.set('i', 'jk', '<ESC>', {})
-- Enter Terminal-Normal Mode
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', {})
vim.keymap.set('t', 'jk', '<C-\\><C-n>', {})
-- Navigating Windows
vim.keymap.set('n', '<C-h>', '<C-w>h', {}) -- Left
vim.keymap.set('n', '<C-j>', '<C-w>j', {}) -- Down
vim.keymap.set('n', '<C-k>', '<C-w>k', {}) -- Up
vim.keymap.set('n', '<C-l>', '<C-w>l', {}) -- Right
-- Telescope-Related Commands
vim.keymap.set('n', ';f', ':Telescope find_files<CR>', {})
vim.keymap.set('n', ';b', ':Telescope buffers<CR>', {})
vim.keymap.set('n', ';r', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', ';;', ':Telescope resume<CR>', {})
-- NvimTree-Related Commands
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', {})
-- Bufferline-Related Commands
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader>d', ':BufferLinePickClose<CR>', {})
vim.keymap.set('n', '<leader>b', ':BufferLinePick<CR>', {})
-- Incremental-Rename Related Commands
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
-- Neogen Related Commands
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", { noremap = true, silent = true })

vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})
vim.keymap.set('', '', '', {})

