return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },  -- for icons
  config = function()
    require("lualine").setup {
      options = {
        theme = "tokyonight", -- matches your colorscheme
        section_separators = { left = "", right = "" },
        component_separators = "|",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          {
            "filename",
            path = 1, -- 0 = just file, 1 = relative, 2 = absolute
            symbols = { modified = "●", readonly = "🔒" },
          },
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    }
  end,
}

