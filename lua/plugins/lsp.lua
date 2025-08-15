return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library =  {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        -- add lazydev to your completion providers
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.config['luals'] = {
        cmd = { 'lus-language-server' },
        filetypes = { 'lua' },
        root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            }
          }
        }
      }
    end
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {},
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig',
    },
  },
}
