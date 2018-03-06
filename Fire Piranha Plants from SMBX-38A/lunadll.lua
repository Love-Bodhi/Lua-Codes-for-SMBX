local pNPC = API.load("pnpc")
local rng = API.load("rng")

function onTick()
for _,firepiranha1 in pairs(NPC.get(8,player.section)) do
if firepiranha1.ai2 == 2 then
if firepiranha1.ai1 == 5 then
fireball1 = pNPC.wrap(NPC.spawn(202,firepiranha1.x+8,firepiranha1.y,player.section))
fireball1.speedY = rng.random(-10.5,-4)
fireball1.speedX = rng.random(-4.5,4.5)
fireball2 = pNPC.wrap(NPC.spawn(202,firepiranha1.x+8,firepiranha1.y,player.section))
fireball2.speedY = rng.random(-10.5,-4)
fireball2.speedX = rng.random(-4.5,4.5)
fireball3 = pNPC.wrap(NPC.spawn(202,firepiranha1.x+8,firepiranha1.y,player.section))
fireball3.speedY = rng.random(-10.5,-4)
fireball3.speedX = rng.random(-4.5,4.5)
end
end
end
for _,firepiranha2 in pairs(NPC.get(51,player.section)) do
if firepiranha2.ai2 == 2 then
if firepiranha2.ai1 == 5 then
fireball4 = pNPC.wrap(NPC.spawn(202,firepiranha2.x+8,firepiranha2.y+32,player.section))
fireball4.speedX = rng.random(-2,-1)
fireball4.speedY = rng.random()
fireball5 = pNPC.wrap(NPC.spawn(202,firepiranha2.x+8,firepiranha2.y+32,player.section))
fireball5.speedX = rng.random(-0.5,0.5)
fireball5.speedY = rng.random()
fireball6 = pNPC.wrap(NPC.spawn(202,firepiranha2.x+8,firepiranha2.y+32,player.section))
fireball6.speedX = rng.random(1,2)
fireball6.speedY = rng.random()
end
end
end
end