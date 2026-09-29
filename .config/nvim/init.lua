vim.opt.number = true
vim.opt.wrap = false
vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true

vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme habamax")

vim.keymap.set("n", "<C-PageUp>", "<C-b>")
vim.keymap.set("n", "<C-PageDown>", "<C-f>")
