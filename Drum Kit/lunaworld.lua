local inputs2 = API.load("inputs2")

local bassdrum = Misc.resolveFile("Drums/bassdrum.wav")
local snaredrum = Misc.resolveFile("Drums/snare.wav")
local closedhihat = Misc.resolveFile("Drums/closedhihat.wav")
local openhihat = Misc.resolveFile("Drums/openhihat.wav")
local lowtom = Misc.resolveFile("Drums/lowtom.wav")
local midtom = Misc.resolveFile("Drums/midtom.wav")
local hightom = Misc.resolveFile("Drums/hightom.wav")
local crashcymbal = Misc.resolveFile("Drums/crashcymbal.wav")
local ridecymbal = Misc.resolveFile("Drums/ridecymbal.wav")

local blackscreen = Graphics.loadImageResolved("Black.png")

inputs2.locked[1].all = true
inputs2.locked[2].all = true

function onStart()
	Audio.sounds[8].muted = true
	Graphics.activateHud(false)
	player.powerup = PLAYER_TANOOKIE
end

function onTick()
	if player:mem(0x13E,FIELD_WORD) == 170 then
		Misc.exitGame()
	end
end

function onDraw()
	if player:mem(0x13E,FIELD_WORD) > 0 then
		Graphics.drawImageWP(blackscreen,0,0,10)
	end
	Text.print("Up: Beat",16,16)
	Text.print("Down: Snare",16,36)
	Text.print("Left: Closed Hi-Hat",16,56)
	Text.print("Right: Open Hi-Hat",16,76)
	Text.print("Jump: Low Tom",16,96)
	Text.print("Alt Jump: Mid Tom",16,116)
	Text.print("Run: High Tom",16,136)
	Text.print("Alt Run: Crash Cymbal",16,156)
	Text.print("Drop Item: Ride Cymbal",16,176)
	Text.print("Press Esc to exit",16,568)
end

function onKeyboardPress(vk)
	if vk == VK_ESCAPE then
		player:kill()
	end
end

function onInputUpdate()
	if inputs2.state[1].up == inputs2.PRESS then
		Audio.playSFX(bassdrum)
	elseif inputs2.state[1].down == inputs2.PRESS then
		Audio.playSFX(snaredrum)
	elseif inputs2.state[1].left == inputs2.PRESS then
		Audio.playSFX(closedhihat)
	elseif inputs2.state[1].right == inputs2.PRESS then
		Audio.playSFX(openhihat)
	elseif inputs2.state[1].jump == inputs2.PRESS then
		Audio.playSFX(lowtom)
	elseif inputs2.state[1].altjump == inputs2.PRESS then
		Audio.playSFX(midtom)
	elseif inputs2.state[1].run == inputs2.PRESS then
		Audio.playSFX(hightom)
	elseif inputs2.state[1].altrun == inputs2.PRESS then
		Audio.playSFX(crashcymbal)
	elseif inputs2.state[1].dropitem == inputs2.PRESS then
		Audio.playSFX(ridecymbal)
	end
end
