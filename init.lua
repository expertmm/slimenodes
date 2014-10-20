minetest.register_node("slimenodes:slime_liquid", {
	description = "liquid slime",
	inventory_image = minetest.inventorycube("slimenodes_liquidslime.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_liquidslime.png" },
	special_tiles = { { name = "slimenodes_liquidslime.png", backface_culling = false } },
	alpha = 200,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid",
	liquid_alternative_source = "slimenodes:slime_liquid",
	liquid_viscosity = 4,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=64, r=100, g=200, b=100},
	groups = {liquid=3, slimey=3, level=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_solid", {
	description = "solid slime",
	tiles = { "slimenodes_solidslime.png" },
	walkable = true,
	groups = {slimey=3, fall_damage_add_percent=-20, level=2},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.3},
	}
})


minetest.register_tool("slimenodes:collector_lvl1", {
	description = "slime collector level 1",
	inventory_image = "slimenodes_collector_lvl1.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [3] = 2 }, uses = 0, maxlevel = 1 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl2", {
	description = "slime collector level 2",
	inventory_image = "slimenodes_collector_lvl2.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [2] = 3, [3] = 1.5 }, uses = 0, maxlevel = 2 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl3", {
	description = "slime collector level 3",
	inventory_image = "slimenodes_collector_lvl3.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [1] = 4, [2] = 1.5, [3] = 0.5 }, uses = 0, maxlevel = 3 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl4", {
	description = "slime collector level 4",
	inventory_image = "slimenodes_collector_lvl4.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 0.9,
		groupcaps = {
			slimey = { times = { [1] = 1, [2] = 0.5, [3] = 0.1 }, uses = 0, maxlevel = 4 }
		}
	}
})
