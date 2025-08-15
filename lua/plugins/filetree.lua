return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({
                strict = true,
                override_by_filename = {
                    ["go.mod"] = {
                        icon = "",
                        color = "#00ADD8",
                        name = "GoMod"

                    },
                    ["go.sum"] = {
                        icon = "",
                        color = "#00ADD8",
                        name = "GoSum"

                    },
                },
                override_by_extension = {
                    ["gohtml"] = {
                        icon = "",
                        color = "#00ADD8",
                        name = "GoHTML",
                    },
                },
            })
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                width = 30,
                signcolumn = "yes",
            },
            renderer = {
                indent_markers = {
                    -- enable = true,
                },
                icons = {
                    git_placement = "signcolumn",
                },
            },
            filters = {
                git_ignored = false,
                dotfiles = false,
            },
        },
        config = function(_, opts)
            require("nvim-tree").setup(opts)

            local nvimTreeFocusOrToggle = function()
                local nvimTree = require("nvim-tree.api")
                local currentBuf = vim.api.nvim_get_current_buf()
                local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
                if currentBufFt == "NvimTree" then
                    nvimTree.tree.toggle()
                else
                    nvimTree.tree.focus()
                end
            end
            vim.keymap.set("n", "<leader>1", nvimTreeFocusOrToggle, { desc = 'Focus or Toggle NvimTree' })
        end
    }
}
