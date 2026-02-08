vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
    end

    map("K", vim.lsp.buf.hover, "Hover Documentation")
    map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
    map("<leader>d", vim.diagnostic.open_float, "Show diagnostics under cursor")
  end
})

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    -- Press q in NORMAL mode to safely close terminal
    vim.keymap.set("n", "q", function()
      vim.cmd("stopinsert")
      vim.fn.chansend(vim.b.terminal_job_id, "exit\n")
      vim.cmd("close")
    end, { buffer = true, silent = true })
  end,
})
