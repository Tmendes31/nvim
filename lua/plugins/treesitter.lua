return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      -- Install parsers for these languages (add yours)
      ensure_installed = { "lua", "python", "javascript", "typescript", "json", "go", "html", "markdown" },
      highlight = {
        enable = true,       -- enable treesitter-based highlighting
      },
      indent = {
        enable = true,       -- enable treesitter-based indentation
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grm",
          scope_incremental = "grc",
        },
      },
    }
  end,
}
