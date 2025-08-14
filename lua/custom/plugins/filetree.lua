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
            vim.keymap.set("n", "<leader>1", nvimTreeFocusOrToggle)
        end
    }
}

-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])


-- return {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
--         "nvim-lua/plenary.nvim",
--         "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--         "MunifTanjim/nui.nvim",
--     },
--     keys = {
--         {
--             "<leader>1",
--             function()
--                 require("neo-tree.command").execute({
--                     action = "focus",
--                     toggle = false,
--                     source = "filesystem",
--                     position = "left",
--                 })
--             end,
--         }
--     },
--     config = function()
--         require('neo-tree').setup({
--             window = {
--                 width = 30,
--                 mappings = {
--                     ["<leader>1"] = {
--                         function()
--                             require("neo-tree.command").execute({
--                                 action = "close"
--                             })
--                         end
--                     }
--                 }
--             },
--             filesystem = {
--                 filtered_items = {
--                     visible = true,
--                     show_hidden_count = true,
--                     hide_dotfiles = false,
--                     hide_gitignored = true
--                 },
--                 hijack_netrw_behavior = "open_default",
--             },
--         })
--     end,
-- }
