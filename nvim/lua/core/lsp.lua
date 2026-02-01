vim.lsp.enable('lua_ls')
vim.lsp.enable('basedpyright')
vim.lsp.enable('ruff')

local severity = vim.diagnostic.severity

vim.diagnostic.config({
  -- virtual_lines = true,
  virtual_text = true,
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})
