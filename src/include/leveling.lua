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

function M.gain_exp(stats, exp)
	local required_exp = M.level_advancement[stats.level + 1]
	stats.exp = stats.exp + exp
	if stats.exp >= required_exp then
		stats = M.level_up(stats)
	end
	return stats
end

function M.level_up(stats)
	stats.level = stats.level + 1
	stats.base_health = stats.base_health + 15
	stats.base_mana = stats.base_mana + 5
	-- msg.post("main:/gui/victory#victory_gui", "display_message", {text = "You leveled up!\nYou are now level " .. tostring(stats.level) .. "!"})
	return stats
end

return M
