local pNPC = API.load("pnpc")

function onTick()
	for _,v in ipairs(NPC.get(245)) do
		local venus = pNPC.wrap(v)
		venus.data.shootfire = venus.data.shootfire or 0
		venus.data.shootfireend = venus.data.shootfireend or 0
		if venus.ai2 == 2 then
			if venus.ai1 == 99 then
				if venus.data.shootfireend == 0 then
					venus.data.shootfire = 1
				else
					venus.data.shootfire = 0
				end
			end
			if venus.data.shootfire == 1 then
				venus.ai1 = 49
				venus.data.shootfire = 0
				venus.data.shootfireend = 1
			end
		else
			venus.data.shootfireend = 0
		end
	end
end
