dofile("/int/init_secret.lua")
telegram.send("SLS загружен!!!")
scripts.setTimer("bodyping",180)

obj.set("termostat.1.target",7)
obj.set("termostat.1.state","off")
obj.set("termostat.1.isActive","N")