-------------------
-- Volume module
-------------------

-- Notification library
local naughty = require("naughty")

-- Volume object
local volume = {
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
function volume:show_status(status)
	local stat = nil
	if (status:match('%[on%]'))
	then
		stat = '[ON]'
	else
		stat = '[OFF]'
	end
	local level = status:match('%d+%%')
	self.id = naughty.notify({title = "Volume", text = stat .. ' ' .. level, replaces_id = self.id}).id
end

-- Increase volume level
function volume:increase()
	volume:show_status(run_command('amixer set Master 5%+'))
end

-- Decrease volume level
function volume:decrease()
	volume:show_status(run_command('amixer set Master 5%-'))
end

-- Toggle mute/unmute
function volume:toggle()
	volume:show_status(run_command('amixer set Master toggle'))
end

return volume
