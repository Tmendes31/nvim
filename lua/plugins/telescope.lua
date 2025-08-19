return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
          n = {
            ["<C-d>"] = actions.delete_buffer,
          },
        },
      },
    }

    -- Optional: keymap for opening buffers picker
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
  end,
}

