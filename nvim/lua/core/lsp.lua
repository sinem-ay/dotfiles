vim.lsp.enable('lua_ls')
vim.lsp.enable('basedpyright')
vim.lsp.enable('ruff')

local severity = vim.diagnostic.severity

vim.diagnostic.config({
  underline = {
    severity = {
      min = vim.diagnostic.severity.ERROR,
    },
  },
  virtual_lines = false,
  virtual_text = false,
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})
