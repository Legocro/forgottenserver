function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.itemid ~= 7106 then
		return false
	end

	if player:getStorageValue(PlayerStorageKeys.TheIceIslands.Questline) >= 21 then
		toPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:say('You take some hot water from the geyser.', TALKTYPE_MONSTER_SAY)
		item:transform(7246)
	end
	return true
end