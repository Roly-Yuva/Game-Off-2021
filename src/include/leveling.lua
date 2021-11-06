-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

M.level_advancement = {
	0,
	100,
	300,
	900,
	2700,
	5400,
	10800,
	21600,
	43200,
	86400
}

function M.gain_exp(current_exp, current_level, exp)
	local required_exp = M.level_advancement[current_level + 1]
	current_exp = current_exp + exp
	if current_exp >= required_exp then
		-- msg.post("main:/gui/victory#victory_gui", "display_message", {text = "You leveled up!\nYou are now level " .. tostring(self.stats[level]) .. "!"})
		return current_exp, current_level + 1
	end
	return current_exp, current_level
end

return M
