sprite = 'BG/stardustFloor'
size = 4608
startX = -1400
startY = -1300
duration = 1

function onCreate()

makeLuaSprite('flash', 'BG/flash', -1000, -1300)
addLuaSprite('flash', true)

setProperty('flash.alpha', 0)

makeLuaSprite('noBG', 'BG/black', -1000, -1300)
addLuaSprite('noBG', false)

makeLuaSprite(sprite .. '1', sprite, startX, startY)
addLuaSprite(sprite .. '1', true)
makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
addLuaSprite(sprite .. '2', true)

makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
addLuaSprite(sprite .. '1speed', true)
makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)
addLuaSprite(sprite .. '2speed', true)

setObjectOrder('flash', getObjectOrder('BG/stardustFloor1') + 99999)

setProperty('BG/stardustFloor1.alpha', 0)
setProperty('BG/stardustFloor2.alpha', 0)

setProperty('BG/stardustFloor1speed.alpha', 0)
setProperty('BG/stardustFloor2speed.alpha', 0)
scrollA()
scrollA2()
end

function onCreatePost()
setObjectOrder('noBG', getObjectOrder('boyfriendGroup') - 1)
end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 0.75)
doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 0.75)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end

if tag == (sprite .. '2moveSpeed') then
scrollB2()
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function scrollB2()
doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 0.001)
doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 0.001)
end

function onUpdate(elapsed)
if curStep == 128 then
setProperty('flash.alpha', 1)
doTweenAlpha('speedIncreased', 'flash', 0, 0.1, '')
doTweenAlpha('BG/stardustFloor1reveal', 'BG/stardustFloor1', 1, 0.1, '')
doTweenAlpha('BG/stardustFloor2reveal', 'BG/stardustFloor2', 1, 0.1, '')
doTweenAlpha('WOOO BG', 'noBG', 0, 0.1, '')
end
if curStep == 1500 then
setObjectOrder('dadGroup', getObjectOrder('BG/stardustFloor1') + 5)
end
if curStep == 1788 then
setProperty('flash.alpha', 1)
setProperty('BG/stardustFloor1.alpha', 0)
setProperty('BG/stardustFloor2.alpha', 0)
setProperty('BG/stardustFloor1speed.alpha', 1)
setProperty('BG/stardustFloor2speed.alpha', 1)
end
if curStep == 1790 then
doTweenAlpha('speedIncreased2', 'flash', 0, 0.05, '')
end
end