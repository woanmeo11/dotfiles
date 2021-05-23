-----------------------
-- Backlight modules
-----------------------

-- Notification Library
local naughty = require('naughty')

-- Backlight object
local backlight = {
	id = nil
}

-- Execute system command
local function run_command(cmd)
	local file = io.popen(cmd)
	local text = file:read('*all')
	file:close()
	return text
end

-- Show notification on desktop
function backlight:show_status()
	local level = run_command('xbacklight'):match('%d+') .. '%'
	self.id = naughty.notify({title = 'Brightness', text = level, replaces_id = self.id}).id
end

-- Increase brightness
function backlight:increase()
	run_command('xbacklight -inc 5%')
	backlight:show_status()
end

-- Decrease brightness
function backlight:decrease()
	run_command('xbacklight -dec 5%')
	backlight:show_status()
end

return backlight
