-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

M.swords = {
	copper_shortsword = {
		display_name = "Copper Shortsword",
		type = "weapon",
		damage = 8
	}
}

M.spears = {
	copper_spear = {
		display_name = "Copper Spear",
		type = "weapon",
		damage = 13
	}
}

M.head = {
	leather_cap = {
		display_name = "Leather Cap"
		type = "armor"
		defense = 3
	}
}

M.chest = {
	leather_jacket = {
		display_name = "Leather Jacket",
		type = "armor",
		defense = 5
	}
}

M.legs = {
	leather_pants = {
		display_name = "Leather Pants",
		type = "armor",
		defense = 4
	}
}

return M
