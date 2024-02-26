return {
    'nvim-treesitter/nvim-treesitter',
    config = function(_, opts)
        -- local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
        -- parser_config.gotmpl = {
        --     install_info = {
        --         url = "https://github.com/ngalaiko/tree-sitter-go-template",
        --         files = { "src/parser.c" }
        --     },
        --     filetype = "gotmpl",
        --     used_by = { "gohtmltmpl", "gotexttmpl", "gotmpl" }
        -- }
        require('nvim-treesitter.configs').setup(opts)
    end,
}
