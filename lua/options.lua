-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make relative line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = 'unnamedplus'

-- Disable word wrapping, that shit has no place on code
vim.o.wrap = false

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default (changed to no)
vim.wo.signcolumn = 'no'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- On split, focus on the new window
vim.o.splitbelow = true
vim.o.splitright = true

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

-- -- [[ Testing: Floating Buffer]]
-- function CreateFloatBuf()
--   local width = 150
--   local height = 50
--   local buf = vim.api.nvim_create_buf(false,true)
--   local ui = vim.api.nvim_list_uis()[1]
--   local opts = {relative= 'editor',
--                    width = width,
--                    height = height,
--                    col = (ui.width/2) - (width/2),
--                    row = (ui.height/2) - (height/2),
--                    anchor = 'NW',
--                    style = 'minimal',
--                    border = 'single',
--                    }
--   local win = vim.api.nvim_open_win(buf,true,opts)
--   vim.api.nvim_win_set_option(win,"winhighlight",('Normal:NormalNC'))
--   -- TODO Turn it into a terminal
--   -- TODO Run a command and don't die 
--   -- TODO Esc
-- end

-- Disable line numbers on the terminal
vim.api.nvim_create_autocmd({ "TermOpen" }, {command = "setlocal nonumber norelativenumber signcolumn=no | startinsert "})

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
-- vim: ts=2 sts=2 sw=2 et
