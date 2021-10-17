
if not minetest.global_exists('test') then return end
if test.active then return end

local describe = test.describe
local it = test.it
local stub = test.stub
local assert_equal = test.assert.equal

describe("Animal Mobs", function ()
	describe("Animals", function ()
		local original_spawn_specific = mobs.spawn_specific
		local stub_spawn_specific = stub()
		test.before_all(function ()
			mobs.spawn_specific = stub_spawn_specific.call
		end)
		test.after_all(function ()
			mobs.spawn_specific = original_spawn_specific
		end)
		it("calls the main mob spawn registration function with the same values as before config was added", function ()
			dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/init.lua")
			-- The original call before config was added, testing for consistency with config defaults
			stub_spawn_specific.called_with(mobs, "mobs_animal:chicken", { "default:dirt_with_grass" }, { "group:grass" }, 14, 15, 60, 8000, 1, 5, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:cow", { "default:dirt_with_grass", "ethereal:green_dirt" }, { "group:grass" }, 14, 15, 60, 8000, 1, 5, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:rat", { "default:stone" }, { "air" }, 3, 9, 60, 8000, 1, -31000, 0)
			stub_spawn_specific.called_with(mobs, "mobs_animal:sheep_white", { "default:dirt_with_grass", "ethereal:green_dirt" }, { "group:grass" }, 14, 15, 60, 8000, 1, 0, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:pumba", { "default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass" }, { "group:dry_grass" }, 14, 15, 60, 8000, 1, 0, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:bee", { "group:flower" }, { "air" }, 14, 15, 60, 7000, 1, 3, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:bunny", { "default:dirt_with_grass" }, { "group:grass" }, 14, 15, 60, 8000, 1, 5, 200, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:kitten", { "default:dirt_with_grass" }, { "group:grass" }, 14, 15, 60, 10000, 1, 5, 50, true)
			stub_spawn_specific.called_with(mobs, "mobs_animal:penguin", { "default:snowblock" }, { "air" }, 14, 15, 60, 20000, 1, 0, 200, true)
		end)
	end)
end)

test.execute(true)
