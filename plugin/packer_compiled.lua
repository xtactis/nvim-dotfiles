-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/md/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/md/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/md/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/md/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/md/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["duck.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nhatch\tduck\frequire1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tcook\tduck\frequiret\1\0\6\0\b\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0003\4\a\0004\5\0\0B\0\5\1K\0\1\0\0\15<leader>dk\0\15<leader>dd\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/duck.nvim",
    url = "https://github.com/tamton-aquib/duck.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["ros-nvim"] = {
    config = { "\27LJ\2\n“\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\20rosnode kill %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-k>\6n\\\0\1\6\0\3\0\t6\1\0\0009\1\1\1\18\3\0\0B\1\2\2\18\4\1\0009\2\2\1)\5\1\0B\2\3\1K\0\1\0\21cycle_previewers\23get_current_picker\17action_stateÆ\1\1\1\t\0\b\0\0283\1\0\0\18\2\0\0'\4\1\0'\5\2\0006\6\3\0009\6\4\6'\b\5\0B\6\2\0A\2\2\1\18\2\0\0'\4\6\0'\5\2\0006\6\3\0009\6\4\6'\b\5\0B\6\2\0A\2\2\1\18\2\0\0'\4\1\0'\5\a\0\18\6\1\0B\2\4\1\18\2\0\0'\4\6\0'\5\a\0\18\6\1\0B\2\4\1K\0\1\0\n<c-e>\6i\20rostopic pub %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-b>\6n\0–\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\23rosservice call %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-e>\6n“\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\20rosparam set %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-e>\6nQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19search_package\31ros-nvim.telescope.package\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17grep_package\31ros-nvim.telescope.package\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17topic_picker\31ros-nvim.telescope.pickers\frequireN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16node_picker\31ros-nvim.telescope.pickers\frequireQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19service_picker\31ros-nvim.telescope.pickers\frequireM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15srv_picker\31ros-nvim.telescope.pickers\frequireM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15msg_picker\31ros-nvim.telescope.pickers\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17param_picker\31ros-nvim.telescope.pickers\frequireB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16catkin_make\19ros-nvim.build\frequireF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20catkin_make_pkg\19ros-nvim.build\frequire=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\frostest\18ros-nvim.test\frequireÿ\5\1\0\6\0&\0g6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0023\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\16\0003\4\17\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\18\0003\4\19\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\20\0003\4\21\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\22\0003\4\23\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\24\0003\4\25\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\26\0003\4\27\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\28\0003\4\29\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\30\0003\4\31\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3 \0003\4!\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\"\0003\4#\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3$\0003\4%\0004\5\0\0B\0\5\1K\0\1\0\0\15<leader>rt\0\15<leader>bp\0\15<leader>bb\0\16<leader>rpl\0\16<leader>rdm\0\16<leader>rds\0\16<leader>rsl\0\16<leader>rnl\0\16<leader>rtl\0\16<leader>fgp\0\15<leader>fp\6n\bset\vkeymap\bvim\26param_picker_mappings\0\28service_picker_mappings\0\26topic_picker_mappings\0\25node_picker_mappings\0\1\0\3\20terminal_height\3\b\19catkin_program\17catkin build\19catkin_ws_path\16~/catkin_ws\nsetup\rros-nvim\frequire\0" },
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/ros-nvim",
    url = "https://github.com/thibthib18/ros-nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/md/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: duck.nvim
time([[Config for duck.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nhatch\tduck\frequire1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tcook\tduck\frequiret\1\0\6\0\b\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0003\4\a\0004\5\0\0B\0\5\1K\0\1\0\0\15<leader>dk\0\15<leader>dd\6n\bset\vkeymap\bvim\0", "config", "duck.nvim")
time([[Config for duck.nvim]], false)
-- Config for: ros-nvim
time([[Config for ros-nvim]], true)
try_loadstring("\27LJ\2\n“\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\20rosnode kill %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-k>\6n\\\0\1\6\0\3\0\t6\1\0\0009\1\1\1\18\3\0\0B\1\2\2\18\4\1\0009\2\2\1)\5\1\0B\2\3\1K\0\1\0\21cycle_previewers\23get_current_picker\17action_stateÆ\1\1\1\t\0\b\0\0283\1\0\0\18\2\0\0'\4\1\0'\5\2\0006\6\3\0009\6\4\6'\b\5\0B\6\2\0A\2\2\1\18\2\0\0'\4\6\0'\5\2\0006\6\3\0009\6\4\6'\b\5\0B\6\2\0A\2\2\1\18\2\0\0'\4\1\0'\5\a\0\18\6\1\0B\2\4\1\18\2\0\0'\4\6\0'\5\a\0\18\6\1\0B\2\4\1K\0\1\0\n<c-e>\6i\20rostopic pub %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-b>\6n\0–\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\23rosservice call %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-e>\6n“\1\0\1\b\0\6\0\17\18\1\0\0'\3\0\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1\18\1\0\0'\3\5\0'\4\1\0006\5\2\0009\5\3\5'\a\4\0B\5\2\0A\1\2\1K\0\1\0\6i\20rosparam set %s(open_terminal_with_format_cmd_entry\14vim_utils\n<c-e>\6nQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19search_package\31ros-nvim.telescope.package\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17grep_package\31ros-nvim.telescope.package\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17topic_picker\31ros-nvim.telescope.pickers\frequireN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16node_picker\31ros-nvim.telescope.pickers\frequireQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19service_picker\31ros-nvim.telescope.pickers\frequireM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15srv_picker\31ros-nvim.telescope.pickers\frequireM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15msg_picker\31ros-nvim.telescope.pickers\frequireO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17param_picker\31ros-nvim.telescope.pickers\frequireB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16catkin_make\19ros-nvim.build\frequireF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20catkin_make_pkg\19ros-nvim.build\frequire=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\frostest\18ros-nvim.test\frequireÿ\5\1\0\6\0&\0g6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0023\3\n\0=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\16\0003\4\17\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\18\0003\4\19\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\20\0003\4\21\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\22\0003\4\23\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\24\0003\4\25\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\26\0003\4\27\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\28\0003\4\29\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\30\0003\4\31\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3 \0003\4!\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3\"\0003\4#\0004\5\0\0B\0\5\0016\0\f\0009\0\r\0009\0\14\0'\2\15\0'\3$\0003\4%\0004\5\0\0B\0\5\1K\0\1\0\0\15<leader>rt\0\15<leader>bp\0\15<leader>bb\0\16<leader>rpl\0\16<leader>rdm\0\16<leader>rds\0\16<leader>rsl\0\16<leader>rnl\0\16<leader>rtl\0\16<leader>fgp\0\15<leader>fp\6n\bset\vkeymap\bvim\26param_picker_mappings\0\28service_picker_mappings\0\26topic_picker_mappings\0\25node_picker_mappings\0\1\0\3\20terminal_height\3\b\19catkin_program\17catkin build\19catkin_ws_path\16~/catkin_ws\nsetup\rros-nvim\frequire\0", "config", "ros-nvim")
time([[Config for ros-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
