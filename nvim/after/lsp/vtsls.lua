-- javascript, javascriptreact, javascript.jsx, typescript, typescriptreact, typescript.tsx
-- lua/after/lsp/vtsls.lua
local tsserver_filetypes =
  { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" }
local vue_ls_path = "/root/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server/"
local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_ls_path,
  languages = { "vue" },
  configNamespace = "typescript",
}

local vtsls_config = {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
        maxTsServerMemory = 12288,
      },
    },
  },
  filetypes = tsserver_filetypes,
}
return vtsls_config
