return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {

    },
    keys = {
        {
            "<leader>q",
            "<cmd>Trouble diagnostics toggle focus=true<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },
}
