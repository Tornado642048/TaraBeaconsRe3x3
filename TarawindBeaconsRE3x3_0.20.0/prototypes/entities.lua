local sounds = require("prototypes.entity.sounds")

data:extend({
  -- new code structure and graphics update by Tornado64
  { -- twBeacon1
    type = "beacon",
    name = "twBeacon1",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon1"},
    max_health = 300,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation1"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 4,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "600kW",
    distribution_effectivity = 0.6,
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon2
    type = "beacon",
    name = "twBeacon2",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon2"},
    max_health = 400,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation2"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "800kW",
    distribution_effectivity = 0.8,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon3
    type = "beacon",
    name = "twBeacon3",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon3"},
    max_health = 500,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation3"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 6,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "1MW",
    distribution_effectivity = 1,
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon4
    type = "beacon",
    name = "twBeacon4",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon4"},
    max_health = 600,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation4"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 7,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "1.2MW",
    distribution_effectivity = 1.2,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon5
    type = "beacon",
    name = "twBeacon5",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon5"},
    max_health = 700,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation5"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 8,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "1.4MW",
    distribution_effectivity = 1.4,
    module_specification =
    {
      module_slots = 7,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon6
    type = "beacon",
    name = "twBeacon6",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon6"},
    max_health = 800,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation6"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 10,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "1.6MW",
    distribution_effectivity = 1.6,
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  },
  { -- twBeacon7
    type = "beacon",
    name = "twBeacon7",
    icon = "__TarawindBeaconsRE3x3__/graphics/icons/beacon.png",
    icon_size = 32, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "twBeacon7"},
    max_health = 1000,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},

    graphics_set = require("prototypes.entity.beacon-animations.beacon-animation7"),

    radius_visualisation_picture =
    {
      filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },
    supply_area_distance = 15,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/beacon-1.ogg",
          volume = 0.2
        },
        {
          filename = "__base__/sound/beacon-2.ogg",
          volume = 0.2
        }
      },
      audible_distance_modifier = 0.33,
      max_sounds_per_type = 3
      -- fade_in_ticks = 4,
      -- fade_out_ticks = 60
    },
    energy_usage = "4MW",
    distribution_effectivity = 2.0,
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0},
      module_info_multi_row_initial_height_modifier = -0.3,
      module_info_max_icons_per_row = 2
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__TarawindBeaconsRE3x3__/graphics/entity/beacon/beacon-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 28,
        shift = util.by_pixel(0, 55),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
    fast_replaceable_group = "beacon"
  }
})
