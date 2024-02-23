return {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
        require('Comment').setup({
            ignore = '^$',
            toggler = {
                line = '<C-_>',
                block = '<leader>bc',
            },
            opleader = {
                line = '<C-_>',
                block = '<leader>b',
            }
        })
    end,
}
