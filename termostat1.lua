--   Event.Type = 1 если изменилось состояние датчика, к которому привязан скрипт
--   Event.Type = 2 если изменился объект, к которому привязан скрипт

local termostatState,t2 = obj.get("termostat.1.state")
local termostatSwitch = zigbee.value("Балкон","state")
local termostatTarget,t2 = obj.get("termostat.1.target")
local delta = 0.1
local tempC = zigbee.value("WS_A046","temperature")
print (" Event.Name="..Event.Name.."; Event.Type="..Event.Type.."; termostat.1.state="..termostatState.."; Розетка="..termostatSwitch)
if ((termostat1Switch == "ON") or (termostat1State ~= "OFF")) then
  if (termostat1Switch == "ON") then
    if (tempC > termostatTarget + delta) then
      zigbee.set("0x84FD27FFFED24452","state","OFF")
      print("ВЫКЛ================Э")
    end
  else
    if (tempC < termostatTarget - delta) then
      zigbee.set("0x84FD27FFFED24452","state","ON")
      print("Включаем==================Э")
    end
  end
end