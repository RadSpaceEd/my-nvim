-- It's fine to (soft) wrap lines in markdown
vim.o.wrap = true

-- Wrap lines at words
vim.o.linebreak = true

-- Remap for dealing with word wrap 
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Quickly align table 
vim.keymap.set('n', '<leader>mt', 'vip:!pandoc -t markdown-simple_tables<CR>', { silent = true , desc = 'Align the table with pandoc'})
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

-- toggle checked / create checkbox if it doesn't exist
vim.keymap.set('n', '<leader>it', require('markdown-togglecheck').toggle, { desc = 'Toggle Checkmark' });
-- toggle checkbox (it doesn't remember toggle state and always creates [ ])
vim.keymap.set('n', '<leader>tt', require('markdown-togglecheck').toggle_box, { desc = 'Toggle Checkbox' });
