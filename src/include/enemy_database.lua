-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

M.lv1 = {
	slime = {
		display_name = "Slime",
		description = "A small jiggly slime.",
		atk = 3,
		def = 1,
		rare = "common", -- or 1
	}
}

-- continue for all levels

return M
