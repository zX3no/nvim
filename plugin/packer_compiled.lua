-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Bay\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Bay\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Bay\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Bay\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Bay\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["better-escape.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\better-escape.vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.dashboard\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard-nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dracula.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.galaxyline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\galaxyline.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim"
  },
  ["mapx.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mapx.nvim"
  },
  neoformat = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoformat"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoscroll.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.project\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\project.nvim"
  },
  ["scrollbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\scrollbar.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.tabout\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Bay\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.dashboard\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: tabout.nvim
time([[Config for tabout.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.tabout\frequire\0", "config", "tabout.nvim")
time([[Config for tabout.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'better-escape.vim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
