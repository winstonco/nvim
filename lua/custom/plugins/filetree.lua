-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            "<leader>1",
            function()
                require("neo-tree.command").execute({
                    action = "focus",
                    toggle = false,
                    source = "filesystem",
                    position = "left",
                })
            end,
        }
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,
                show_hidden_count = true,
                hide_dotfiles = false,
                hide_gitignored = true
            },
        },
    },
    config = function()
        require('neo-tree').setup({
            window = {
                mappings = {
                    ["<leader>1"] = {
                        function()
                            require("neo-tree.command").execute({
                                action = "close"
                            })
                        end
                    }
                }
            },
        })
    end,
}
