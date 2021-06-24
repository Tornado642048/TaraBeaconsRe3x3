-- Productivity fix
for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") then
    v.limitation = nil -- empty limitation table
    v.limitation_message_key = nil
  end
end

-- Distinguish between vanilla and modded modules
local vanilla_productivity = {
p1 = "productivity-module",
p2 = "productivity-module-2",
p3 = "productivity-module-3"
}

-- Icon Fix
for _,name in pairs(vanilla_productivity) do
data.raw.module[name].beacon_tint = {primary = {r=1.000,g=0.463,b=0.322,a=1.000}, secondary = {r=1.000,g=0.976,b=0.388,a=1.000}}
data.raw.module[name].art_style = "vanilla"
data.raw.module[name].requires_beacon_alt_mode = false
end