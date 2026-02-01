vim.lsp.config["basedpyright"] = {
 cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = {
    ".git",
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
  },
  settings = {
    basedpyright = {
      disableOrganizeImports = true, -- Ruff handles imports
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
        reportUnusedImport = false,
        reportUnusedVariable = false,
        reportUnusedFunction = false,
      },
    },
  },
}



vim.lsp.config["ruff"] = {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  single_file_support = true,
  root_markers = {
    "pyproject.toml",
    "ruff.toml",
    ".ruff.toml",
    ".git",
  },
  settings = {
    args = {
      "--line-length=120",
    }
  }
}
