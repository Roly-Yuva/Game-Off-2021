-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M.pick_loot(loot_table, loot_num)
	for i = 1, loot_num do
		local loot = rnd.range(1, #loot_table)
		local category = loot[1] -- category
		table.remove(loot, 1)
		msg.post("main:/inventory#inventory", "add_item", {category = category, item_name = loot_table[loot]})
		table.remove(loot_table, loot)
	end
	return true
end

return M
