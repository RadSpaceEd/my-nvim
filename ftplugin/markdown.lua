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
