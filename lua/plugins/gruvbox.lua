return {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      require("gruvbox").setup({
        contrast = "hard",
        overrides = {
          ["@text.todo"] = { bg = "#1d2021", fg = "#f9f5d7"}
        }
      })
      vim.cmd([[colorscheme gruvbox]])
    end
  }

-- vim: ts=2 sts=2 sw=2 et
