
local S = mobs.intllib

-- Warthog originally by KrupnoPavel, B3D model by sirrobzeroone

mobs:register_mob("mobs_animal:pumba", {
	stepheight = 0.6,
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	group_attack = true,
	owner_loyal = true,
	attack_npcs = false,
	reach = 2,
	damage = 2,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 0.95, 0.4},
	visual = "mesh",
	mesh = "mobs_pumba.b3d",
	textures = {
		{"mobs_pumba.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_pig",
		attack = "mobs_pig_angry",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	jump_height = 6,
	pushable = true,
	follow = {"default:apple", "farming:potato"},
	view_range = 10,
	drops = {
		{name = "mobs:pork_raw", chance = 1, min = 1, max = 3},
	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 25,
		stand_end = 55,
		walk_start = 70,
		walk_end = 100,
		punch_start = 70,
		punch_end = 100,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})

if global_mobs_animal.spawn_enabled_warthog then
mobs:spawn({
	name = "mobs_animal:pumba",
	nodes = global_mobs_animal.spawn_on_warthog,
	neighbors = global_mobs_animal.spawn_near_warthog,
	min_light = global_mobs_animal.spawn_min_light_warthog,
	max_light = global_mobs_animal.spawn_max_light_warthog,
	interval = global_mobs_animal.spawn_interval_warthog,
	chance = global_mobs_animal.spawn_chance_warthog,
	active_object_count = global_mobs_animal.spawn_active_object_count_warthog,
	min_height = global_mobs_animal.spawn_min_height_warthog,
	max_height = global_mobs_animal.spawn_max_height_warthog,
	day_toggle = true,
})
end


mobs:register_egg("mobs_animal:pumba", S("Warthog"), "mobs_pumba_inv.png")


mobs:alias_mob("mobs:pumba", "mobs_animal:pumba") -- compatibility


-- raw porkchop
minetest.register_craftitem(":mobs:pork_raw", {
	description = S("Raw Porkchop"),
	inventory_image = "mobs_pork_raw.png",
	on_use = minetest.item_eat(4),
	groups = {food_meat_raw = 1, food_pork_raw = 1, flammable = 2},
})

-- cooked porkchop
minetest.register_craftitem(":mobs:pork_cooked", {
	description = S("Cooked Porkchop"),
	inventory_image = "mobs_pork_cooked.png",
	on_use = minetest.item_eat(8),
	groups = {food_meat = 1, food_pork = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:pork_cooked",
	recipe = "mobs:pork_raw",
	cooktime = 5,
})
