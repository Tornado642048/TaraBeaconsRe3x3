-- update to reworked version if selected
if settings.startup["tarawind-reloaded-3x3mode"].value == true then
  data.raw["beacon"]["twBeacon1"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon1"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon1"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon1"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon1"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon1"].animation.scale = 1
  data.raw["beacon"]["twBeacon1"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon1"].animation_shadow.scale = 1

  data.raw["beacon"]["twBeacon2"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon2"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon2"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon2"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon2"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon2"].animation.scale = 1
  data.raw["beacon"]["twBeacon2"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon2"].animation_shadow.scale = 1

  data.raw["beacon"]["twBeacon3"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon3"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon3"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon3"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon3"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon3"].animation.scale = 1
  data.raw["beacon"]["twBeacon3"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon3"].animation_shadow.scale = 1

  data.raw["beacon"]["twBeacon4"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon4"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon4"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon4"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon4"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon4"].animation.scale = 1
  data.raw["beacon"]["twBeacon4"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon4"].animation_shadow.scale = 1
  
  data.raw["beacon"]["twBeacon5"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon5"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon5"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon5"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon5"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon5"].animation.scale = 1
  data.raw["beacon"]["twBeacon5"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon5"].animation_shadow.scale = 1

  data.raw["beacon"]["twBeacon6"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon6"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon6"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon6"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon6"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon6"].animation.scale = 1
  data.raw["beacon"]["twBeacon6"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon6"].animation_shadow.scale = 1

  data.raw["beacon"]["twBeacon7"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
  data.raw["beacon"]["twBeacon7"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw["beacon"]["twBeacon7"].base_picture.shift = { 0.34375, 0.046875}
  data.raw["beacon"]["twBeacon7"].base_picture.scale = 1
  data.raw["beacon"]["twBeacon7"].animation.shift = { -0.03125, -1.71875}
  data.raw["beacon"]["twBeacon7"].animation.scale = 1
  data.raw["beacon"]["twBeacon7"].animation_shadow.shift = { 3.140625, 0.484375}
  data.raw["beacon"]["twBeacon7"].animation_shadow.scale = 1
end

if settings.startup["tarawind-reloaded-productivityreduce"].value == true then
    data.raw["beacon"]["twBeacon1"].allowed_effects = {"consumption", "speed", "pollution"}

    data.raw["beacon"]["twBeacon2"].allowed_effects = {"consumption", "speed", "pollution"}

    data.raw["beacon"]["twBeacon3"].allowed_effects = {"consumption", "speed", "pollution"}

    data.raw["beacon"]["twBeacon4"].allowed_effects = {"consumption", "speed", "pollution"}

    data.raw["beacon"]["twBeacon5"].allowed_effects = {"consumption", "speed", "pollution"}

    data.raw["beacon"]["twBeacon6"].allowed_effects = {"consumption", "speed", "pollution"}
end

if settings.startup["tarawind-reloaded-reducerange"].value == true then
    data.raw["beacon"]["twBeacon1"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon2"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon3"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon4"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon5"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon6"].supply_area_distance = 3

    data.raw["beacon"]["twBeacon7"].supply_area_distance = 3
end