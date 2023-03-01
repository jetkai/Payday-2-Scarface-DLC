--[[
    Author: https://github.com/jetkai
    Reference: https://github.com/mwSora/payday-2-luajit/blob/master/pd2-lua/lib/managers/dlcmanager.lua#L2287-L2293
    Requirements:
        * Payday-2-BLT (SuperBLT) -> https://superblt.znix.xyz
]]

function WINDLCManager:_verify_dlcs()
    for dlc_name, dlc_data in pairs(Global.dlc_manager.all_dlc_data) do

        -- Unlocks the Scarface heist, character, perk deck & weapon
        if dlc_name == "friend" or dlc_name == "chico" then
            dlc_data.verified = true
        end

        -- Continues to unlock DLC that has already been paid for on Steam
        if not dlc_data.verified and self:_check_dlc_data(dlc_data) then
            dlc_data.verified = true
        end

	end
end