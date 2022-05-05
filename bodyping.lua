local bodyIp1 = "192.168.1.83"    -- 83 iPhone docn
local bodyIp2 = "192.168.1.139"   -- 63 iPhone mur
local bodyIp3 = "192.168.1.105"   -- 105 macbook
local newState, oldState, prevState

--if (os.ping(bodyIp1) < 0) then
--  newState = "N"
--else
--  newState = "Y"
--end

--oldState, prevState = obj.get("bodyPing.state")
--if (oldState ~= newState) then
--  obj.set("bodyPing.state", newState)
--end

--if (newState == "Y") then
--  obj.set("bodyAtHome.state", "Y")
--else
--  local t1,t2 = obj.getTime("bodyPing.state")
--  if ((os.time() - t1) > 90) then
--    obj.set("bodyAtHome.state", "N")
--  end
--end