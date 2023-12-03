# My tidy Neovim config

This is based on [dam9000/kickstartc-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim). It takes kickstart-nvim and divides it up into multiple files, and I divide it even more, so that each plugin configuration has it's on file.

Things added:

* leap.nvim, a plugin for ultra fast navigation. 
* gruvbox colorscheme, replace onedark
* marksman, a neat language server for markdown
* markdown.nvim and a few keymaps for dealing with markdown files
* guess-indent, replacing vim-sleuth
* Harpoon

Things that I removed 
* vim-fugitive (I'm seeing if I want to replace it with lazygit)
* vim-rhubarb 
* gitsigns (I don't like seeing the signcolumn that much... seeing if I keep it off or if it's usefullness outweights it's ugliness and waste of vertical space)

TODO

- [x] Deal with tasks lists on markdown files
- [x] Fix bug: the x inside checkboxes and the TS highlight color are the same
	- "Solved" it by explicitly changing the values of bg and fg on the `gruvbox.lua`... It should be solved within the parser for markdown.
- [x] Convert already existing text into links
- [x] Harpoon 
  - ThePrimaAgen uses the homerow as quick keymaps to access the files on Harpoon. But he uses Dvorak, and I use Colemak. Colemak has "I" and "O" on the homerow, of the right hand, and that would conflict with `<C-i>` and `<C-o>` for jumping to next/privious mark. So I the moved the keymaps one row above, so: `<C-l>`, `<C-u>`, `<C-y>` and `<C-;>`.
- [x] Git integration
- [ ] SQL 
- [ ] Undo tree 
- [ ] Better multiplexing capability
  - [ ] Fork toggleterm.nvim
    - [ ] Toggle floating terminals separatly from the others 
    - [ ] Tab dependant terminals
  - [ ] Project per tab
- [ ] Maybe somethign like Goyo for editing markdown files 
