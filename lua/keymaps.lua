-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move selected lines up and down
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Remap for yanking and pasting from the system clipboard
vim.keymap.set({ 'n', 'v' }, '<Space>y', '"+y')
vim.keymap.set('n', '<Space>Y', '"+Y', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<Space>p', '"+p', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<Space>P', '"+P', { silent = true })

-- Center cursor on pgup/down
vim.keymap.set('n', '<C-d>', "<C-d>zz", { silent = true })
vim.keymap.set('n', '<C-u>', "<C-u>zz", { silent = true })
vim.keymap.set('n', '<Pagetup>', "<C-u>zz", { silent = true })
vim.keymap.set('n', '<PageDown>', "<C-d>zz", { silent = true })
vim.keymap.set('n', 'n', "nzzzv", { silent = true })
vim.keymap.set('n', 'N', "Nzzzv", { silent = true })

-- Get out of terminal mode easier
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]])

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Harpoon ]]
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-l>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-u>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-y>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end)

-- vim: ts=2 sts=2 sw=2 et
