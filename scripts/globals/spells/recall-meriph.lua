-----------------------------------------
-- Spell: Recall-Meriph
-----------------------------------------

require("scripts/globals/teleports");
require("scripts/globals/keyitems");
require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
   		if (target:hasKeyItem(MERIPHATAUD_GATE_CRYSTAL) == true) then
   				target:addStatusEffectEx(EFFECT_TELEPORT,0,RECALL_MERIPH,0,4.7);
            spell:setMsg(93);
        else
            spell:setMsg(283);
        end;
        return 0;
end;