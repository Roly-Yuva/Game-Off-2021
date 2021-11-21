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
	86400,
	129600,
	194400,
	291600,
	437400,
	656100
}

function M.add_exp(stats, exp)
	stats.exp = stats.exp + exp
	for i = stats.level + 1, #M.level_advancement do
		if stats.exp >= M.level_advancement[i] then
			stats.level = stats.level + 1
		else
			stats = M.level_up(stats)
			break
		end
	end
	return stats
end

function M.level_up(stats)
	stats.base_health = stats.base_health + 15
	-- stats.base_mana = stats.base_mana + 5
	-- msg.post("main:/gui/victory#victory_gui", "display_message", {text = "You leveled up!\nYou are now level " .. tostring(stats.level) .. "!"})
	return stats
end

return M
