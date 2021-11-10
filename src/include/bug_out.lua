-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put.
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

M.bugs = {
	M.fail,
	M.other_move,
	M.backfire
}

function M.bug_out(bugs, current_move, health, moves)
	bugs = bugs or M.bugs
	local bug = bugs[rnd.range(1, #bugs)]
	msg.post("main./gui/battle#battle_gui", "display_message", {text = "But it bugged out!"})
	return M.bug(current_move, health, moves)
end

function M.fail(current_move, health, moves)
	return false, health
end

function M.other_move(current_move, health, moves)
	local move
	repeat
		move = moves[rnd.range(1, #moves)]
	until move ~= current_move
	current_move = move
	return current_move, health
end

function M.backfire(current_move, health, moves)
	local damage = current_move.damage
	damage = damage * 0.75
	damage = math.floor(damage + 0.5)
	health = health - damage
	return false, health
end

return M
