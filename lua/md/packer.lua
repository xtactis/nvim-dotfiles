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
    -- use 'folke/tokyonight.nvim'
    -- use 'ellisonleao/gruvbox.nvim'
    use 'sainnhe/gruvbox-material'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use { 'thibthib18/ros-nvim', config=function()
        require 'ros-nvim'.setup({
            catkin_ws_path = "~/catkin_ws",
            catkin_program = "catkin build",
            terminal_height = 8,
            node_picker_mappings = function(map)
                map("n", "<c-k>", vim_utils.open_terminal_with_format_cmd_entry("rosnode kill %s"))
                map("i", "<c-k>", vim_utils.open_terminal_with_format_cmd_entry("rosnode kill %s"))
            end,
            topic_picker_mappings = function(map)
                local cycle_previewers = function(prompt_bufnr)
                    local picker = action_state.get_current_picker(prompt_bufnr)
                    picker:cycle_previewers(1)
                end
                map("n", "<c-b>", vim_utils.open_terminal_with_format_cmd_entry("rostopic pub %s"))
                map("i", "<c-b>", vim_utils.open_terminal_with_format_cmd_entry("rostopic pub %s"))
            -- While browsing topics, press <c-e> to switch between `rostopic info` and `rostopic echo`
                map("n", "<c-e>", cycle_previewers)
                map("i", "<c-e>", cycle_previewers)
            end,
            service_picker_mappings = function(map)
                map("n", "<c-e>", vim_utils.open_terminal_with_format_cmd_entry("rosservice call %s"))
                map("i", "<c-e>", vim_utils.open_terminal_with_format_cmd_entry("rosservice call %s"))
            end,
            param_picker_mappings = function(map)
                map("n", "<c-e>", vim_utils.open_terminal_with_format_cmd_entry("rosparam set %s"))
                map("i", "<c-e>", vim_utils.open_terminal_with_format_cmd_entry("rosparam set %s"))
            end
        })
        vim.keymap.set('n', '<leader>fp', function() require("ros-nvim.telescope.package").search_package() end, {})
        vim.keymap.set('n', '<leader>fgp', function() require("ros-nvim.telescope.package").grep_package() end, {})
        vim.keymap.set('n', '<leader>rtl', function() require("ros-nvim.telescope.pickers").topic_picker() end, {})
        vim.keymap.set('n', '<leader>rnl', function() require("ros-nvim.telescope.pickers").node_picker() end, {})
        vim.keymap.set('n', '<leader>rsl', function() require("ros-nvim.telescope.pickers").service_picker() end, {})
        vim.keymap.set('n', '<leader>rds', function() require("ros-nvim.telescope.pickers").srv_picker() end, {})
        vim.keymap.set('n', '<leader>rdm', function() require("ros-nvim.telescope.pickers").msg_picker() end, {})
        vim.keymap.set('n', '<leader>rpl', function() require("ros-nvim.telescope.pickers").param_picker() end, {})
        vim.keymap.set('n', '<leader>bb', function() require("ros-nvim.build").catkin_make() end, {})
        vim.keymap.set('n', '<leader>bp', function() require("ros-nvim.build").catkin_make_pkg() end, {})
        vim.keymap.set('n', '<leader>rt', function() require("ros-nvim.test").rostest() end, {})
      end
    }
    use {
        'tamton-aquib/duck.nvim',
        config = function()
            vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
            vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
        end
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    if packer_bootstrap then
        require('packer').sync()
    end
end)
