--# NO STICKS NO BRICKS

data.raw.recipe["iron-stick"].enabled = false
data.raw.recipe["stone-brick"].enabled = false

--# RECIPES

-- replace bricks with raw stone
data.raw.recipe["concrete"].ingredients = {
    {"stone", 10},
    {"iron-ore",1},
    {
        amount = 100,
        name = "water",
        type = "fluid"
    }
}

-- replace bricks with concrete
data.raw.recipe["electric-furnace"].ingredients = {
    {"steel-plate", 10},
    {"advanced-circuit",5},
    {"concrete",10}
}
data.raw.recipe["oil-refinery"].ingredients = {
    {"steel-plate", 15},
    {"iron-gear-wheel", 10},
    {"concrete", 10},
    {"electronic-circuit", 10},
    {"pipe", 10}
}
data.raw.recipe["steel-furnace"].ingredients = {
    {"steel-plate", 5},
    {"concrete", 10}
}
data.raw.recipe["stone-wall"].ingredients = {
    {"concrete", 5}
}

-- change circuits to concrete
data.raw.recipe["pumpjack"].ingredients = {
    {"steel-plate", 5},
    {"iron-gear-wheel", 10},
    {"concrete", 5},
    {"pipe", 10}
}

-- remove sticks
data.raw.recipe["iron-axe"].ingredients = {
    {"iron-plate", 3}
}
data.raw.recipe["steel-axe"].ingredients = {
    {"steel-plate", 5}
}
data.raw.recipe["small-lamp"].ingredients = {
    {"electronic-circuit", 1},
    {"iron-plate", 1}
}

-- remove sticks, replace stone with concrete
data.raw.recipe["rail"].ingredients = {
    {"concrete", 1},
    {"steel-plate", 1}
}


-- replace efficiency module with productivity
data.raw.recipe["power-armor-mk2"].ingredients = {
    {"productivity-module-3", 5},
    {"speed-module-3", 5},
    {"processing-unit", 40},
    {"steel-plate", 40}
}

--# RESEARCH

-- concrete easier and earlier (automation-2 should have always been a prereq)
data.raw.technology["concrete"].prerequisites = {
    "automation-2"
}
data.raw.technology["concrete"].unit.count = 50

-- add concrete where it is needed for unlocked recipes
table.insert(data.raw.technology["advanced-material-processing"].prerequisites, "concrete")
table.insert(data.raw.technology["oil-processing"].prerequisites, "concrete")
data.raw.technology["railway"].prerequisites = {
    "engine",
    "logistics",
    "concrete"
}
data.raw.technology["stone-walls"].prerequisites = {
    "concrete"
}

-- add green to stone wall research, since it has a green prereq
data.raw.technology["stone-walls"].unit.ingredients = {
    {"science-pack-1", 1},
    {"science-pack-2", 1}
}

-- rework flight -> robotics nonsense and add flight to the silo
data.raw.technology["flying"].unit.count = 150
data.raw.technology["construction-robotics"].prerequisites = {
    "robotics"
}
data.raw.technology["logistic-robotics"].prerequisites = {
    "robotics"
}
data.raw.technology["robotics"].prerequisites = {
    "flying"
}
table.insert(data.raw.technology["rocket-silo"].prerequisites, "flying")

-- rework "laser" and remove it from military 3 (military never uses laser)
table.insert(data.raw.technology["laser"].prerequisites, "military-2")
data.raw.technology["laser-turrets"].prerequisites = {
    "turrets",
    "laser",
    "battery"
}
data.raw.technology["military-3"].prerequisites = {
    "military-2"
}

-- remove (now-)redundant concrete prereq
data.raw.technology["nuclear-power"].prerequisites = {
    "advanced-electronics"
}

-- replace efficiency module with productivity
data.raw.technology["power-armor-2"].prerequisites = {
    "power-armor",
    "speed-module-3",
    "productivity-module-3"
}

--# MISC TWEAKS

-- multiple power output by 15 (now equal to 50% of consumed panels)
data.raw["solar-panel-equipment"]["solar-panel-equipment"].power = "150kW"

-- re-align assembler speeds to make assembler 2 craft speed equal 1.0
data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 0.75
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1.0