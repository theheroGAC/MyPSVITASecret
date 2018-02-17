--[[ 
	ONElua.
	Lua Interpreter for PlayStation®Vita.
	
	Licensed by GNU General Public License v3.0
	
	Copyright (C) 2014-2018, ONElua Team
	http://onelua.x10.mx/staff.html
	
	Designed By:
	- DevDavisNunez (https://twitter.com/DevDavisNunez).
	- Gdljjrod (https://twitter.com/gdljjrod).
]]

color.loadpalette() -- Load Defaults colors
local devuxo = os.devinfo("ux0:/")
local args = "" -- Clean value
bri = 200
master=os.access()
while true do
	if back then back:blit(0,0) end
	buttons.read()

	screen.print(10,10,"MY PSVITA SECRET")
	if master == 1 then
		screen.print(10,30,"Access Total (Unsafe mode)",1,color.green)
	else
		w=screen.print(10,30,"Access Limit (Safe mode)",1,color.red)
		screen.print(w+20,30,"Press X to enable full access")
	end

	screen.print(10,70,"PSN ID : "..tostring(os.nick()))
       screen.print(10,90,"PSN LOGIN : "..tostring(os.login()))
	screen.print(10,110,"PSN PASSWORD : "..tostring(os.password()))
	screen.print(10,130,"IDPS : "..tostring(os.idps()))
	screen.print(10,150,"PSID : "..tostring(os.psid()))
	screen.print(10,170,"CPU : "..tostring(os.cpu()))
	screen.print(10,190,"BUS CLOCK : "..tostring(os.busclock()))
	screen.print(10,210,"GPU CLOCK : "..tostring(os.gpuclock()))
	screen.print(10,230,"CROSSBAR CLOCK : "..tostring(os.crossbarclock()))
	screen.print(10,250,"FIRMWARE VERSION : "..tostring(os.swversion()).." SPOOF : "..tostring(os.spoofedversion()))
	screen.print(10,270,"TOTAL RAM: "..files.sizeformat(os.totalram()) .. " | REAL TIME: "..files.sizeformat(os.ram()))

	local tmp_args = os.arg() -- Read the tail of args.
	if #tmp_args > 0 then -- if get any new args update value global
		args = tmp_args
	end

	screen.print(10,460,"Press PS to EXIT")


	screen.flip()
	

end
