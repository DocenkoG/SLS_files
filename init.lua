dofile("/int/init_secret.lua")
telegram.send("SLS_DIN загружен!!!")
scripts.setTimer("bodyping",180)

obj.set("termostat.1.target",8)
obj.set("termostat.1.state","OFF")
obj.onChange('termostat.1.target', 'termostat1.lua')
obj.onChange('termostat.1.state', 'termostat1.lua')

obj.set("termostat.WS.target",3)
obj.set("termostat.WS.state","OFF")
obj.onChange('termostat.WS.target', 'termostatWS.lua')
obj.onChange('termostat.WS.state', 'termostatWS.lua')