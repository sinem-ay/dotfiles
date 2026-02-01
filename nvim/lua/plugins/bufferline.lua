return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.opt.termguicolors = true
      vim.opt.showtabline = 2
      vim.keymap.set("n", "<leader>n", ":bn<cr>")
      vim.keymap.set("n", "<leader>p", ":bp<cr>")
      vim.keymap.set("n", "<leader>x", ":bd<cr>")

      require("bufferline").setup({
        options = {
          separator_style = "slant",
        },
      })
    end,
  },
}
