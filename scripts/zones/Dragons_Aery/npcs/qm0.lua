-----------------------------------
-- Area: Dragons Aery
--  NPC: qm0 (???)
-- Spawns Fafnir or Nidhogg
-- !pos -81 32 2 178
-----------------------------------
package.loaded["scripts/zones/Dragons_Aery/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Dragons_Aery/TextIDs")
require("scripts/zones/Dragons_Aery/MobIDs")
require("scripts/globals/npc_util")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onSpawn(npc)
    if LandKingSystem_NQ < 1 and LandKingSystem_HQ < 1 then
        npc:setStatus(dsp.status.DISAPPEAR)
    end
end

function onTrade(player,npc,trade)
    if not GetMobByID(FAFNIR):isSpawned() and not GetMobByID(NIDHOGG):isSpawned() then
        if LandKingSystem_NQ ~= 0 and npcUtil.tradeHas(trade, 3339) and npcUtil.popFromQM(player, npc, FAFNIR) then
            player:confirmTrade()
        elseif LandKingSystem_HQ ~= 0 and npcUtil.tradeHas(trade, 3340) and npcUtil.popFromQM(player, npc, NIDHOGG) then
            player:confirmTrade()        
        end
    end
end

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_OUT_OF_ORDINARY)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end