-----------------------------------------
-- ID: 5181
-- Item: tortilla_buena
-- Food Effect: 60Min, All Races
-----------------------------------------
-- Health 8
-- Vitality 4
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,3600,5181)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.HP, 8)
    target:addMod(dsp.mod.VIT, 4)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 8)
    target:delMod(dsp.mod.VIT, 4)
end
