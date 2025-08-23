return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            view = {
                side = "right",
            },
            git = {
                enable = true,
                ignore = false,
            },
            renderer = {
                highlight_git = true,
                highlight_opened_files = "name",
                icons = {
                    show = {
                        git = false,   -- hide git icons
                        file = true,   -- keep normal file icons
                        folder = true, -- keep folder icons
                    },
                },
            },
        })

        -- highlight overrides
        vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#41FDFE" })
        vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#e5c07b" })
        vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { fg = "#98c379" })
        vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#e06c75" })
    end,
}
