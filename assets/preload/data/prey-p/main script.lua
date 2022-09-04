local nice = true --does funny stuff

function onCreate()

makeLuaSprite('textTOP', 'BG/text thing', 0, -1000)
addLuaSprite('textTOP', true)
setObjectCamera('textTOP', 'other')
--position to add text is -700

makeLuaSprite('textBOTTOM', 'BG/text thing', 0, 1000)
addLuaSprite('textBOTTOM', true)
setObjectCamera('textBOTTOM', 'other')
--position is 500

makeLuaText('dialogue', '', 1200, 40, 580)
addLuaText('dialogue')
setTextSize('dialogue', 40)
setObjectCamera('dialogue', 'other')

makeAnimatedLuaSprite('furnace', 'characters/Furnace_sheet', -1800, 1000)
addLuaSprite('furnace', false)
scaleObject('furnace', 6, 6)
addAnimationByPrefix('furnace', 'furnace', 'Furnace idle', 24,true)
setProperty('furnace.antialiasing', false)
setProperty('skipCountdown', true)
end

function onCreatePost()
setProperty('botplayTxt.visible', false)
setProperty('gf.alpha', 0)
setProperty('camHUD.alpha', 0)
end

function onTweenCompleted(tag)
if tag == 'furnace flyby' then
setProperty('furnace.flipX', true)
setProperty('furnace.y', 600)
end
end

function onStepHit()
if curStep == 133 then
setTextString('dialogue', "Jeez, i haven't seen any animals for miles...")
end
if curStep == 167 then
setTextString('dialogue', "Robuttnik must've been working overtime")
end
if curStep == 201 then
setTextString('dialogue', "TARGET SPOTTED")
setTextColor('dialogue', '9a4000')
end
if curStep == 223 then
setTextString('dialogue', "Huh? Do i Smell... Smoke?")
characterPlayAnim('boyfriend', 'singLEFT', false)
setTextColor('dialogue', 'ffffff')
end
if curStep == 250 then
setTextString('dialogue', "")
doTweenX('furnacehello', 'dadGroup', 0, 0.75, 'smootherStepInOut')
doTweenAlpha('iconP2back', 'iconP2', 1, 0.1, 'smootherStepInOut')
doTweenAlpha('woahNotesRbak', 'camHUD', 1, 0.1, 'smootherStepInOut')
end
if curStep == 1500 then
doTweenX('furnacedies', 'dadGroup', -1600, 2.5, 'smootherStepInOut')
doTweenY('furnacediesDOWN', 'dadGroup', 700, 12.5, 'smootherStepInOut')
doTweenAngle('furnacediesSPIN', 'dadGroup', -90, 5, 'smootherStepInOut')
doTweenAlpha('iconP2die', 'iconP2', 0, 0.1, 'smootherStepInOut')
end
if curStep == 1534 then
doTweenY('helloText', 'textTOP', -700, 0.5, 'smootherStepInOut')
doTweenY('helloWorld', 'textBOTTOM', 500, 0.5, 'smootherStepInOut')
end
if curStep == 1536 then
doTweenAlpha('woahNotesGone', 'camHUD', 0, 1, 'smootherStepInOut')
end
if curStep == 1546 then
    removeLuaText('misses', false)
    removeLuaText('missesTxt', false)
    removeLuaText('time', false)
    removeLuaText('songTime', false)
    removeLuaText('score', false)
    removeLuaText('scoreTxtsus', false)
setTextString('dialogue', 'Seems that bucket of bolts had to lay off the nitro this time around!')
end
if curStep == 1552 then
cancelTween('furnacedies')
cancelTween('furnacediesDOWN')
cancelTween('furnacediesSPIN')
doTweenY('I go up', 'dadGroup', -100, 0.5, 'smootherStepInOut')
doTweenX('Susnic', 'boyfriendGroup', 150, 2.5, 'smootherStepInOut')
end
if curStep == 1568 then
doTweenX('HelloSonic', 'dadGroup', 170, 2, 'smootherStepInOut')
doTweenAlpha('iconP2egg', 'iconP2', 1, 0.1, 'smootherStepInOut')
doTweenAngle('furnacediesSPIN', 'dadGroup', 275, 0.00000001, 'smootherStepInOut')
end
if curStep == 1587 then
setTextString('dialogue', 'Hey Red Head!')
end

if curStep == 1599 then
setTextString('dialogue', 'You might wanna repair your toys!')
end

if curStep == 1625 then
setTextString('dialogue', "You don't even know your fate hedgehog...")
setTextColor('dialogue', 'FF0000')
end

if curStep == 1676 then
setTextString('dialogue', "*Maniacal Kackling*")
setTextColor('dialogue', 'FF0000')
end

if curStep == 1788 then
doTweenAlpha('HaiiNotess', 'camHUD', 1, 1, 'smootherStepInOut')
setTextString('dialogue', "")
setProperty('health', 1)
setTextColor('dialogue', 'FFFFFF')
doTweenY('goodbyeText', 'textTOP', -1000, 0.5, 'smootherStepInOut')
doTweenY('goodbyeWorld', 'textBOTTOM', 1000, 0.5, 'smootherStepInOut')
end
if curStep == 2463 then
doTweenX('furnace flyby', 'furnace', 3000, 12.5, 'smootherStepInOut')
end
if curStep == 3326 then
doTweenX('starvingManDie', 'dadGroup', -6000, 5, 'smootherStepInOut')
doTweenAlpha('woahNotesDEADagain', 'camHUD', 0, 0.1, 'smootherStepInOut')
end
if curStep == 3330 then
doTweenY('text is back', 'textTOP', -700, 0.5, 'smootherStepInOut')
doTweenY('my ass is back', 'textBOTTOM', 500, 0.5, 'smootherStepInOut')
end
if curStep == 3335 then
removeLuaText('misses', true)
removeLuaText('missesTxt', true)
removeLuaText('time', true)
removeLuaText('songTime', true)
removeLuaText('score', true)
removeLuaText('scoreTxtsus', true)
setTextString('dialogue', "Man, you realy like scrambling your own plans don't'cha-")
triggerEvent('Change Character', 0, 'Peelout-dialogue')
end
if curStep == 3365 then
addAnimationByPrefix('reach', 'furnace', 'Furnace left', 24, true)
doTweenX('heAttak', 'furnace', getProperty('boyfriend.x'), 0.3, 'smootherStepInOut')
objectPlayAnimation('furnace', 'reach', true)
end
if curStep == 3375 then
doTweenX('reach', 'furnace', -9000, 0.3, 'smootherStepInOut')
end
if curStep == 3380 then
setTextString('dialogue', "")
setTextColor('dialogue', 'FF0000')
doTweenAlpha('HaiiNotess', 'camHUD', 1, 1, 'smootherStepInOut')
setTextString('dialogue', "")
setProperty('health', 1)
setTextColor('dialogue', 'FFFFFF')
doTweenY('goodbyeText', 'textTOP', -1000, 0.5, 'smootherStepInOut')
doTweenY('goodbyeWorld', 'textBOTTOM', 1000, 0.5, 'smootherStepInOut')
end
if curStep == 3385 then
setTextString('dialogue', "")
doTweenX('furnacehello', 'dadGroup', -100, 2, 'smootherStepInOut')
doTweenY('I go up', 'dadGroup', 300, 0.5, 'smootherStepInOut')
doTweenAlpha('iconP2back', 'iconP2', 1, 0.1, 'smootherStepInOut')
doTweenAlpha('woahNotesRbak', 'camHUD', 1, 0.1, 'smootherStepInOut')
end

function onCreate()

makeAnimatedLuaSprite('starved', 'characters/Starved', -1800, 1000)
addLuaSprite('starved', false)
addAnimationByPrefix('starved', 'starved', 'Idle', 24,true)
end
end