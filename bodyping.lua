local bodyIp = "192.168.1.34"    -- 34 IpCamera 1
local newState, oldState, prevState

if (os.ping(bodyIp) < 0) then
  newState = "No"
else
  newState = "Yes"
end
oldState, prevState = obj.get("bodyPing.state")
if (oldState ~= newState) then
  obj.set("bodyPing.state", newState)
end

if (newState == "Yes") then
  obj.set("bodyAtHome.state", "Yes")
else
  local t1,t2 = obj.getTime("bodyPing.state")
  if ((os.time() - t1) > 600) then
    obj.set("bodyAtHome.state", "No")
  end
end