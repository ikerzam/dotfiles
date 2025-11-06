require "nvchad.autocmds"

-- Highlight al yankear texto (Neovim 0.12+)
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Resalta brevemente el texto yankeado",
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    local event = vim.v.event
    if event.operator == "y" and event.regtype ~= "" then
      vim.highlight.on_yank {
        higroup = "IncSearch", -- puedes cambiarlo por 'Visual' o crear tu grupo custom
        timeout = 100, -- duración del highlight en milisegundos
      }
    end
  end,
})
