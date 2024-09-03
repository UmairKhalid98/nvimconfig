return {
    "folke/neodev.nvim",
    { "folke/neoconf.nvim",              cmd = "Neoconf" },
    "EdenEast/nightfox.nvim",
    --{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 900
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- LSP and stuff
    -- Get keybinds like gd, gD etc: https://lsp-zero.netlify.app/v3.x/language-server-configuration.html
    --
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                "codelldb",
                "netcoredbg"
            }
        }
    },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    -- cmp stuff
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer' },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },


    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end
    },
    -- Autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Commenting

    {
        'numToStr/Comment.nvim',
        opts = {
            toggler = {
                ---Line-comment toggle keymap
                line = '<leader>/',
                ---Block-comment toggle keymap
                block = '<leader>b/',
            },
            opleader = {
                ---Line-comment keymap
                line = '<leader>/',
                ---Block-comment keymap
                block = '<leader>b/',
            }

        },
        lazy = false,
    },

    -- Debugger
    { 'mfussenegger/nvim-dap' },
    {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
        -- Add other configurations here
    },

    -- Mason
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap"
        },
        opts = {
            handlers = {}
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {
                actions = {
                    open_file = {
                        quit_on_open = true,
                    },
                },
            }
        end,
    }
}
