-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'sainnhe/gruvbox-material'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'ms-jpq/coq_nvim'
    
    use 'ziglang/zig.vim'
    use 'neovim/nvim-lspconfig'
    use 'nanotee/nvim-lsp-basics'

    use 'lewis6991/gitsigns.nvim'

    use 'elihunter173/dirbuf.nvim'
    
    use 'sakhnik/nvim-gdb'

    -- memes
    use 'rktjmp/shenzhen-solitaire.nvim'
    use 'seandewar/nvimesweeper'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
