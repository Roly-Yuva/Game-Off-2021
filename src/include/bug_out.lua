-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M:bug_out(bugs)
	bugs = bugs or {
		fail,
		other_move,
		backfire
	}
	local bug = bugs[rnd.range(1, #bugs)]
	msg.post("main:/gui/battle#battle_gui", "display_message", {text = "But it bugged out!"})
	return M.bug(self)
end

function M:fail()
	return false
end

function M:other_move()
	local moves = self.moves
	local move
	repeat
		move = moves[rnd.range(1, #moves)]
	until move ~= self.current_move
	self.current_move = move
	return move
end

function M:backfire()
	local move = self.current_move
	local damage = move.damage
	damage = damage * 0.75
	damage = math.floor(damage + 0.5)
	self.health = self.health - damage
	return false
end

return M
