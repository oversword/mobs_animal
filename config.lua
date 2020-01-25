--[[ DEFAULTS: --
spawn_on                   = {"group:soil", "group:stone"},
spawn_near                 = {"air"},
spawn_min_light            = 0,
spawn_max_light            = 15,
spawn_interval             = 30,
spawn_chance               = 5000,
spawn_active_object_count  = 1,
spawn_min_height           = -31000,
spawn_max_height           = 31000,
]]

local config = {}


config.spawn_enabled_bee = true
config.spawn_on_bee = {"group:flower"}
config.spawn_near_bee = nil
config.spawn_min_light_bee = 14
config.spawn_max_light_bee = nil
config.spawn_interval_bee = 60
config.spawn_chance_bee = 7000
config.spawn_active_object_count_bee = nil
config.spawn_min_height_bee = 3
config.spawn_max_height_bee = 200


local spawn_on_bunny = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on_bunny = "ethereal:prairie_dirt"
end

config.spawn_enabled_bunny = true
config.spawn_on_bunny = {spawn_on_bunny}
config.spawn_near_bunny = {"group:grass"}
config.spawn_min_light_bunny = 14
config.spawn_max_light_bunny = nil
config.spawn_interval_bunny = 60
config.spawn_chance_bunny = 8000 -- 15000
config.spawn_active_object_count_bunny = nil
config.spawn_min_height_bunny = 5
config.spawn_max_height_bunny = 200




local spawn_on_chicken = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on_chicken = "ethereal:bamboo_dirt"
end

config.spawn_enabled_chicken = true
config.spawn_on_chicken = {spawn_on_chicken}
config.spawn_near_chicken = {"group:grass"}
config.spawn_min_light_chicken = 14
config.spawn_max_light_chicken = nil
config.spawn_interval_chicken = 60
config.spawn_chance_chicken = 8000 -- 15000
config.spawn_active_object_count_chicken = nil
config.spawn_min_height_chicken = 5
config.spawn_max_height_chicken = 200




config.spawn_enabled_cow = true
config.spawn_on_cow = {"default:dirt_with_grass", "ethereal:green_dirt"}
config.spawn_near_cow = {"group:grass"}
config.spawn_min_light_cow = 14
config.spawn_max_light_cow = nil
config.spawn_interval_cow = 60
config.spawn_chance_cow = 8000 -- 15000
config.spawn_active_object_count_cow = nil
config.spawn_min_height_cow = 5
config.spawn_max_height_cow = 200





local spawn_on_kitten = "default:dirt_with_grass"

if minetest.get_modpath("ethereal") then
	spawn_on_kitten = "ethereal:grove_dirt"
end
config.spawn_enabled_kitten = true
config.spawn_on_kitten = {spawn_on_kitten}
config.spawn_near_kitten = {"group:grass"}
config.spawn_min_light_kitten = 14
config.spawn_max_light_kitten = nil
config.spawn_interval_kitten = 60
config.spawn_chance_kitten = 10000 -- 22000
config.spawn_active_object_count_kitten = nil
config.spawn_min_height_kitten = 5
config.spawn_max_height_kitten = 50


config.spawn_enabled_panda = true
if minetest.get_modpath("ethereal") then
    config.spawn_enabled_panda = false
end

config.spawn_on_panda = {"ethereal:bamboo_dirt"}
config.spawn_near_panda = {"group:grass"}
config.spawn_min_light_panda = 14
config.spawn_max_light_panda = nil
config.spawn_interval_panda = 60
config.spawn_chance_panda = 8000 -- 15000
config.spawn_active_object_count_panda = nil
config.spawn_min_height_panda = 10
config.spawn_max_height_panda = 80




config.spawn_enabled_penguin = true
config.spawn_on_penguin = {"default:snowblock"}
config.spawn_near_penguin = nil
config.spawn_min_light_penguin = 14
config.spawn_max_light_penguin = nil
config.spawn_interval_penguin = 60
config.spawn_chance_penguin = 20000
config.spawn_active_object_count_penguin = nil
config.spawn_min_height_penguin = 0
config.spawn_max_height_penguin = 200




config.spawn_enabled_rat = true
config.spawn_on_rat = {"default:stone"}
config.spawn_near_rat = nil
config.spawn_min_light_rat = 3
config.spawn_max_light_rat = 9
config.spawn_interval_rat = 60
config.spawn_chance_rat = 8000
config.spawn_active_object_count_rat = nil
config.spawn_max_height_rat = 0
config.spawn_min_height_rat = nil




config.spawn_enabled_sheep = true
config.spawn_on_sheep = {"default:dirt_with_grass", "ethereal:green_dirt"}
config.spawn_near_sheep = {"group:grass"}
config.spawn_min_light_sheep = 14
config.spawn_max_light_sheep = nil
config.spawn_interval_sheep = 60
config.spawn_chance_sheep = 8000 -- 15000
config.spawn_active_object_count_sheep = nil
config.spawn_min_height_sheep = 0
config.spawn_max_height_sheep = 200





local spawn_on_warthog = {"default:dirt_with_grass"}
local spawn_near_warthog = {"group:grass"}

if minetest.get_mapgen_setting("mg_name") ~= "v6" then
	spawn_on_warthog = {"default:dirt_with_dry_grass"}
	spawn_near_warthog = {"group:dry_grass"}
end

if minetest.get_modpath("ethereal") then
	spawn_on_warthog = {"ethereal:mushroom_dirt"}
	spawn_near_warthog = {"flowers:mushroom_brown", "flowers:mushroom_brown"}
end

config.spawn_enabled_warthog = true
config.spawn_on_warthog = spawn_on_warthog
config.spawn_near_warthog = spawn_near_warthog
config.spawn_min_light_warthog = 14
config.spawn_max_light_warthog = nil
config.spawn_interval_warthog = 60
config.spawn_chance_warthog = 8000 -- 15000
config.spawn_active_object_count_warthog = nil
config.spawn_min_height_warthog = 0
config.spawn_max_height_warthog = 200


global_mobs_animal = config
