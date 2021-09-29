return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'Mofiqul/dracula.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'jdhao/better-escape.vim', event = 'InsertEnter'}
    use "lukas-reineke/indent-blankline.nvim"
    use "sbdchd/neoformat"
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {
        "glepnir/dashboard-nvim",
        config = function() require "config.dashboard" end
    }
    use "norcalli/nvim-colorizer.lua"
    use "terrortylor/nvim-comment"
    use {
        'abecodes/tabout.nvim',
        config = function() require "config.tabout" end,
        wants = {'nvim-treesitter'} -- or require if not used so far
    }
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use 'karb94/neoscroll.nvim'
    use {
        "ahmedkhalf/project.nvim",
        config = function() require "config.project" end
    }
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require 'config.galaxyline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use "b0o/mapx.nvim"
    use 'Xuyuanp/scrollbar.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    -- TODO

    -- scoop install glow
    -- use "ellisonleao/glow.nvim"

end)
