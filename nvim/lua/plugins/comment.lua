return {
  "terrortylor/nvim-comment",
  config = function()
    vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")
    require("nvim_comment").setup({ create_mappings = false })
  end
}
