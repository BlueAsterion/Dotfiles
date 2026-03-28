--- GLOBAL VARIABLES ---
local builtin = require("telescope.builtin")

vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3

-- KEYMAPS --

-- LSP KEYMAPS --
vim.keymap.set("n", "<C-]>", vim.lsp.buf.definition, { buffer = true })

-- Window Movement --
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Plugins --
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {}) -- Open neotree if closed and if open close it.
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- Format the file.

--- Telescope --
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" }) -- Find files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })   -- Live grep
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })       -- Find buffers
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })   -- FInd help tags
