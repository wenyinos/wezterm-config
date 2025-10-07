local wezterm = require('wezterm')
local mux = wezterm.mux

local M = {}

M.setup = function()
   wezterm.on('gui-startup', function(cmd)
      local _, _, window = mux.spawn_window(cmd or {})
      local gui_window = window:gui_window()
      gui_window:set_inner_size(80, 24)
   end)
end
--config.webgpu_power_preference = "LowPower"
return M
