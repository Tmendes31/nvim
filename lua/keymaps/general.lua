vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { silent = true })   -- Next buffer
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", { silent = true })   -- Previous buffer
vim.keymap.set("n", "<leader>bl", ":buffers<CR>", { silent = true }) -- List buffers
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true }) -- Delete current buffer

-- Ident: Use tabs instead
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Un-indent line" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection and reselect" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Un-indent selection and reselect" })

-- Save with Ctrl-S in normal and insert mode
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file", silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi", { desc = "Save file", silent = true })

vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Grep (search word in files)" })

-- Map window navigaion
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
