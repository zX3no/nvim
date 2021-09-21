return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
 use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- Requires Python
    use({
        "ms-jpq/chadtree",
        branch = "chad",
        run = ":CHADdeps",
    })
    use 'Mofiqul/dracula.nvim'
    use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'jdhao/better-escape.vim', event = 'InsertEnter'}
    use "Pocco81/AutoSave.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "sbdchd/neoformat"
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {"glepnir/dashboard-nvim",
config = function()
         require "config.dashboard"
      end,
}
    use "norcalli/nvim-colorizer.lua"
    use "terrortylor/nvim-comment"
    use {"wfxr/minimap.vim", run = "cargo install --locked code-minimap"}
    use {
    'abecodes/tabout.nvim', config = function() require "config.tabout" end,
wants = {'nvim-treesitter'}, -- or require if not used so far
}
use {'williamboman/nvim-lsp-installer', requires = "neovim/nvim-lspconfig"}
use 'onsails/lspkind-nvim'
-- scoop install glow
-- use "ellisonleao/glow.nvim"

end)
