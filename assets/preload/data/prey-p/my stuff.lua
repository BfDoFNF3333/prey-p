function onCreate()
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    precacheImage('RedVG')
    makeLuaSprite('RedVG', 'RedVG', 0, 0)
    setObjectCamera('RedVG', 'other')
    scaleObject('RedVG', 1, 1)
end

function onStepHit()
    if curStep == 3071 then
    addLuaSprite('RedVG', true)
    doTweenAlpha('RedVGalphatween', 'RedVG', 0, 0.5, 'smootherStepInOut')
    end
end

function onTweenCompleted(tag)
    if tag == 'RedVGalphatween' then
        if getProperty('RedVG.alpha') == 0 then
            doTweenAlpha('RedVGalphatween', 'RedVG', 1, 0.5, 'smootherStepInOut')
        else
            doTweenAlpha('RedVGalphatween', 'RedVG', 0, 0.5, 'smootherStepInOut')-- 1 duration for the iconic Vg effect
        end
    end
end

function onBeatHit()
    if curBeat == 832 then
        removeLuaSprite('RedVG', false)
    end
end