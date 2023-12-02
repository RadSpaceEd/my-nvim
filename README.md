# My tidy Neovim config

This is based on [dam9000/kickstartc-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim). It takes kickstart-nvim and divides it up into multiple files, and I divide it even more, so that each plugin configuration has it's on file.

Things added:

* leap.nvim, a plugin for ultra fast navigation. 
* gruvbox colorscheme, replace onedark
* marksman, a neat language server for markdown
* a few keymaps and configurations for markdown files 
* guess-indent, replacing vim-sleuth

Things that I removed 
* vim-fugitive (I'm seeing if I want to replace it with lazygit)
* vim-rhubarb 
* gitsigns (I don't like seeing the signcolumn that much... seeing if I keep it off or if it's usefullness outweights it's ugliness and waste of vertical space)

TODO

- [ ] Deal with tasks lists on markdown files
- [ ] Convert already existing text into links
- [ ] Git integration
- [ ] Projects
- [ ] Harpoon
- [ ] SQL 
- [ ] Undo tree 
- [ ] Maybe somethign like Goyo for editing markdown files 
