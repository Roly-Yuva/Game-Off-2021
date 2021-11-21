-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

M.swords = {
	type = "weapon",
	copper_shortsword = {
		display_name = "Copper Shortsword",
		type = "weapon",
		damage = 8
	},
	iron_shortsword = {
		display_name = "Iron Shortsword",
		type = "weapon",
		damage = 10
	}
}

M.spears = {
	type = "weapon",
	copper_spear = {
		display_name = "Copper Spear",
		damage = 13
	},
	iron_spear = {
		display_name = "Iron Spear",
		damage = 15
	}
}

M.hammers = {
	type = "weapon",
	copper_hammer = {
		display_name = "Copper Hammer",
		damage = 12
	},
	iron_hammer = {
		display_name = "Iron Hammer",
		damage = 14
	}
}

M.head = {
	type = "armor",
	leather_cap = {
		display_name = "Leather Cap"
		defense = 3,
		set = "leather"
	},
	iron_helmet = {
		display_name = "Iron Helmet",
		defense = 5,
		set = "iron"
	}
}

M.chest = {
	type = "armor",
	leather_jacket = {
		display_name = "Leather Jacket",
		defense = 5,
		set = "leather"
	},
	iron_chestplate = {
		display_name = "Iron Chestplate",
		defense = 7,
		set = "iron"
	}
}

M.legs = {
	type = "armor",
	leather_pants = {
		display_name = "Leather Pants",
		defense = 4,
		set = "leather"
	},
	iron_leggings = {
		display_name = "Iron Leggings",
		defense = 6
		set = "iron"
	}
}

M.materials = {
	type = "material",
	leather = {
		display_name = "Leather",
		description = "A scrap of leather."
	},
	copper = {
		display_name = "Copper",
		description = "A chunk of copper."
	},
	iron = {
		display_name = "Iron",
		description = "A piece of iron."
	}
}

return M
