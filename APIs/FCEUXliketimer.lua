--FCEUX Like Timer, Made by Love Bodhi
--Original made by Yave

local FCEUXliketimer = {}

local encrypt = API.load("encrypt")
local FCEUXTimer = encrypt.Data(Data.DATA_GLOBAL, "Timer", false)

if FCEUXTimer:get("PlayTime") == nil then
	FCEUXTimer:set("PlayTime", 0)
end

function FCEUXliketimer.onInitAPI()
	registerEvent(FCEUXliketimer, "onDraw", "onDraw", true)
end

function FCEUXliketimer.onDraw()
	if FCEUXTimer:get("PlayTime") > 23399999 then
		FCEUXTimer:set("PlayTime", 0)
	end
	FCEUXTimer:set("PlayTime", FCEUXTimer:get("PlayTime")+1)
	FCEUXTimer:save()
	Text.print(string.format("%02d",FCEUXTimer:get("PlayTime")/234000)..":"..string.format("%02d",(FCEUXTimer:get("PlayTime")/3900)%60)..":"..string.format("%02d",(FCEUXTimer:get("PlayTime")/65)%60).."."..string.format("%02d",100*(FCEUXTimer:get("PlayTime")/65)%100),600,4)
end

return FCEUXliketimer