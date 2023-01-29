return require('packer').startup(function()
	-- packerr can manage itself
	use 'wbthomason/packer.nvim'
	-- colorscheme
	use 'gruvbox-community/gruvbox'

	use 'andymass/vim-matchup'
	use 'windwp/nvim-autopairs'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'

	--treesitter
	use {
	    'nvim-treesitter/nvim-treesitter',
	    run = function()
		    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		    ts_update()
	    end,
	}

	-- autocomplete 
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'

	--telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--git 
	use 'tpope/vim-fugitive'

end)
