directione = {'left', 'down', 'up', 'right'}
local isHere = false

function onCreatePost()
    if boyfriendName == 'hman' then
        makeAnimatedLuaSprite('sily', 'characters/hman_small', getProperty('boyfriend.x') + 360, getProperty('boyfriend.y') + 190)
        setScrollFactor('sily', 1.2, 1.1)
        addAnimationByPrefix('sily', 'down', 'solid chris down note', 24, false)
        addAnimationByPrefix('sily', 'up',   'solid chris up note', 24, false)
        addAnimationByPrefix('sily', 'left', 'solid chris left note', 24, false)
        addAnimationByPrefix('sily', 'right','solid chris right note', 24, false)
        addAnimationByPrefix('sily', 'idle', 'solid idle', 24, false)
        addLuaSprite('sily', true)
        setProperty('sily.visible', false)
        setObjectOrder('sily', getObjectOrder('overlay2') - 1)
    end
end

-- Note miss/hit
function goodNoteHit(id, direction, noteType, isSustainNote)
    if boyfriendName == 'hman' then
        objectPlayAnimation('sily', directione[direction + 1], true)
    end
end

function onBeatHit()
    if boyfriendName == 'hman' then
        if getProperty('sily.animation.curAnim.finished') then
            
            objectPlayAnimation('sily', 'idle', true)
        end
    end
end


function onMoveCamera(focus)
    if boyfriendName == 'hman' then
	    if focus == 'boyfriend' and not isHere then
	    	isHere = true
            setProperty('sily.visible', true)
            objectPlayAnimation('sily', 'appear', true)
	    elseif focus == 'dad' then
	    	isHere = true
            setProperty('sily.visible', true)
	    end
    end
end