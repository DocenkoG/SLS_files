-- Приветствие хозяина включением илюминации
if Event.Type == 2 then
  local name = Event.Obj.Name
  local value = Event.Obj.Value
  if (value == "Yes") then
    zigbee.set("Двор_L1","state","ON")
    zigbee.set("Гирлянда","state","ON")
  else
    zigbee.set("Двор_L1","state","OFF")
    zigbee.set("Гирлянда","state","OFF")
  end
end

