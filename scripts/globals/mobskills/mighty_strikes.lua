---------------------------------------------
-- Mighty Strikes
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/status")
require("scripts/globals/msg")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    MobBuffMove(mob, tpz.effect.MIGHTY_STRIKES, 1, 0, 45)

    skill:setMsg(tpz.msg.basic.USES)

    return tpz.effect.MIGHTY_STRIKES
end
