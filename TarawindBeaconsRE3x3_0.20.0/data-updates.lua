-- function to get the animation for downscaling
local function scale_replace(graphics_set)
  
  --shift and scale the bottom, top and shadow
  for _, item in pairs(graphics_set.animation_list) do
    if item.animation.layers == nil then
       -- only the top and light has no layers
      local vector_x = 0
      local vector_y = 0
      for _, single_vector in pairs(item.animation.shift) do
        if vector_x == 0 then
          vector_x = single_vector
        else
          vector_y = single_vector
        end
      end
      item.animation.shift = {vector_x, vector_y + 0.442}
      if item.animation.hr_version.shift then
        local hr_vector_x = 0
        local hr_vector_y = 0
        for _, single_vector in pairs(item.animation.hr_version.shift) do
          if hr_vector_x == 0 then
            hr_vector_x = single_vector
          else
            hr_vector_y = single_vector
          end
        end
        -- change the top part 
        item.animation.hr_version.shift = {hr_vector_x , hr_vector_y + 0.442}
      end
      if item.animation.scale == nil then
        item.animation.scale = 0.33
      else
        item.animation.scale = item.animation.scale * 0.33
      end
      if item.animation.hr_version.scale then
        item.animation.hr_version.scale = item.animation.hr_version.scale * 0.33
      end
    else -- the object as multiple layers
      for _, subitem in pairs(item.animation.layers) do
        if subitem.draw_as_shadow == true then -- change the shadow alignment and scale
          local vector_x = 0
          local vector_y = 0
          for _, single_vector in pairs(subitem.shift) do
            if vector_x == 0 then
              vector_x = single_vector
            else
              vector_y = single_vector
            end
          end
          subitem.shift = {vector_x * 0.33, vector_y}
          if subitem.hr_version.shift then
            local hr_vector_x = 0
            local hr_vector_y = 0
            for _, single_vector in pairs(subitem.hr_version.shift) do
              if hr_vector_x == 0 then
                hr_vector_x = single_vector
              else
                hr_vector_y = single_vector
              end
            end
            subitem.hr_version.shift = {hr_vector_x * 0.33, hr_vector_y}
          end
        end
        if subitem.scale == nil then
          subitem.scale = 0.33
        else
          subitem.scale = item.scale * 0.33
        end
        if subitem.hr_version.scale then
          subitem.hr_version.scale = subitem.hr_version.scale * 0.33
        end
      end
    end
  end

  -- shift and scale the modules
  for _, modules in pairs(graphics_set.module_visualisations) do
    local slotcount = 0
    for _, slot in pairs(modules.slots) do 
      for _, slotlayer in pairs(slot) do
        slotlayer.pictures.scale = 0.33
        local vector_x = 0
        local vector_y = 0
        for _, single_vector in pairs(slotlayer.pictures.shift) do
          if vector_x == 0 then
            vector_x = single_vector
          else
            vector_y = single_vector
          end
        end
        if vector_x < 0 then
          slotlayer.pictures.shift = {vector_x * 0.33 + 0.15625, vector_y * 0.33 + 0.02}
        else
          if slotcount == 0 then -- if it is the top slot shift it to the right when bottom, shift to the right
            slotlayer.pictures.shift = {vector_x * 0.33 - 0.15625, vector_y * 0.33 + 0.02}
          else
            slotlayer.pictures.shift = {vector_x * 0.33 + 0.15625, vector_y * 0.33 + 0.02}
          end
        end
        if slotlayer.pictures.hr_version then
          local hr_vector_x = 0
          local hr_vector_y = 0
          slotlayer.pictures.hr_version.scale = slotlayer.pictures.hr_version.scale * 0.33
          for _, single_vector in pairs(slotlayer.pictures.hr_version.shift) do
            if vector_x == 0 then
              hr_vector_x = single_vector
            else
              hr_vector_y = single_vector
            end
          end
          if hr_vector_x < 0 then
            slotlayer.pictures.hr_version.shift = {hr_vector_x * 0.33 + 0.15625, hr_vector_y * 0.33 + 0.02}
          else
            if slotcount == 0 then -- if it is the top slot shift it to the right when bottom, shift to the right
              slotlayer.pictures.hr_version.shift = {hr_vector_x * 0.33 - 0.15625, hr_vector_y * 0.33 + 0.02}
            else
              slotlayer.pictures.hr_version.shift = {hr_vector_x * 0.33 + 0.15625, hr_vector_y * 0.33 + 0.02}
            end
          end
        end
      end
      slotcount = slotcount + 1; -- count the amount of slots that have been changed
    end
  end

end

-- update to reworked version if selected
if settings.startup["tarawind-reloaded-3x3mode"].value == true then
  data.raw["beacon"]["beacon"].fast_replaceable_group = "beacon"
end

if settings.startup["tarawind-reloaded-3x3mode"].value == false then
  data.raw["beacon"]["twBeacon1"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon1"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon1.graphics_set)

  data.raw["beacon"]["twBeacon2"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon2"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon2.graphics_set)

  data.raw["beacon"]["twBeacon3"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon3"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon3.graphics_set)

  data.raw["beacon"]["twBeacon4"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon4"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon4.graphics_set)
  
  data.raw["beacon"]["twBeacon5"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon5"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon5.graphics_set)

  data.raw["beacon"]["twBeacon6"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon6"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon6.graphics_set)

  data.raw["beacon"]["twBeacon7"].collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
  data.raw["beacon"]["twBeacon7"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
  scale_replace(data.raw.beacon.twBeacon7.graphics_set)

  -- supply area range fix when they are smaller

  data.raw["beacon"]["twBeacon1"].supply_area_distance = data.raw["beacon"]["twBeacon1"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon2"].supply_area_distance = data.raw["beacon"]["twBeacon2"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon3"].supply_area_distance = data.raw["beacon"]["twBeacon3"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon4"].supply_area_distance = data.raw["beacon"]["twBeacon4"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon5"].supply_area_distance = data.raw["beacon"]["twBeacon5"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon6"].supply_area_distance = data.raw["beacon"]["twBeacon6"].supply_area_distance + 1

  data.raw["beacon"]["twBeacon7"].supply_area_distance = data.raw["beacon"]["twBeacon7"].supply_area_distance + 1

  -- log(data.raw.beacon.twBeacon1.graphics_set == data.raw.beacon.twBeacon2.graphics_set)
  -- log(data.raw.beacon.twBeacon2.graphics_set == data.raw.beacon.twBeacon3.graphics_set)
  -- log(data.raw.beacon.twBeacon3.graphics_set == data.raw.beacon.twBeacon4.graphics_set)
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