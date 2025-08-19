vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { silent = true })

-- LSP saga
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover docs" })
vim.keymap.set("i", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover docs" })
