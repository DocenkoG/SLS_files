local swState = zigbee.value("0x84FD27FFFED24452","state")
if swState == "ON" then
  obj.set("termostat.1.state","HEATING")
else
  obj.set("termostat.1.state","INACTIVITY")
end
  