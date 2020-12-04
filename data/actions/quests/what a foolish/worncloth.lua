function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.actionid ~= 4204 then
		return false
	end

	if player:getStorageValue(PlayerStorageKeys.WhatAFoolishQuest.Questline) ~= 34
			or player:getStorageValue(PlayerStorageKeys.WhatAFoolishQuest.OldWornCloth) == 1 then
		return false
	end

	player:setStorageValue(PlayerStorageKeys.WhatAFoolishQuest.OldWornCloth, 1)
	player:say('Amazing! That was quite fast!', TALKTYPE_MONSTER_SAY)
	toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
	item:transform(7501)
	return true
end