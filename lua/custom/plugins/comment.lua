return {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
        require('Comment').setup({
            ignore = '^$',
            toggler = {
                line = '<C-_>',
                -- block = '<C-S-_>',
            },
            opleader = {
                line = '<C-_>',
                -- block = '<C-S-_>',
            }
        })
    end,
}
