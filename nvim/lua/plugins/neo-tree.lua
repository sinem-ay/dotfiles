return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
      require("neo-tree").setup({
        window = {
          position = "left",
        },
        sources = {
          "filesystem",
          "git_status",
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
          },
        },

        git_status = {
          symbols = {
            added     = "✚",
            modified  = "",
            deleted   = "✖",
            renamed   = "󰁕",
            untracked = "",
            ignored   = "",
            unstaged  = "󰄱",
            staged    = "",
            conflict  = "",
          },
        },
      })
    end
  }
}
