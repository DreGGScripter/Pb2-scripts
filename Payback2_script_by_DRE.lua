function Home()
local menu = gg.choice({
"Immortal",
"No Reload",
"Fast Walk Speed",
"No Reload Grenades",
"Ammo For Rocket",
"EXIT"
},nil,"Payback 2 menu, by Dre")
if not menu then
gg.toast("Cancelled")
elseif menu == 1 then
local a = findEntityAnchor() -- pistol knife method
-- adjust the value
t = {
address = a + 0x154,
flags = gg.TYPE_FLOAT,
freeze = true,
value = 1
}
-- set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("Immortal activated!")
elseif menu == 2 then
local a = findEntityAnchor() -- pistol knife method
-- adjust the value
t = {
address = a + 0x74,
flags = gg.TYPE_WORD,
freeze = true,
value = 0
}
-- set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("No Reload Active!")
elseif menu == 3 then
gg.setRanges(gg.REGION_CODE_APP) -- only pick one of 3 for best speed
gg.clearResults()
gg.searchNumber(15120,gg.TYPE_WORD)
gg.getResults(1)
gg.editAll(15400,gg.TYPE_WORD)
gg.clearResults()
gg.toast("Fast walking speed active!")
elseif menu == 4 then
local a = findEntityAnchor() -- pistol knife method
-- adjust the value
t = {
address = a + 0x74,
flags = gg.TYPE_WORD,
freeze = true,
value = -63
}
-- set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("No Reload Grenades!")
elseif menu == 5 then
--TODO: use pistol knife method, and set all weapon value to 32000 (weapon ammo is near hold weapon)
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.clearResults() -- clear the results
gg.alert('Rocket Ammo Must Be At 100')
gg.searchNumber(100,gg.TYPE_WORD)
gg.getResults(100)
gg.editAll(32e3,gg.TYPE_WORD) -- 32000
elseif menu == 6 then
Exit()
end
end

function findEntityAnchor()
--Find pistol knife method thingy
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
--begin searching anchors/offsets
gg.toast("Pistol")
gg.sleep(1e3) -- 1000
gg.searchNumber(13,gg.TYPE_WORD)
gg.toast("Knife")
gg.sleep(1e3)
gg.refineNumber(0)
gg.toast("Pistol")
gg.sleep(1e3)
gg.refineNumber(13)
local t = gg.getResults(1)
gg.clearResults()
return t[1] and t[1].address or nil -- return result address
end

function Exit()
gg.clearResults()
os.exit()
end

while true do
while not gg.isVisible()do gg.sleep(100)end
gg.setVisible(false)
Home()
gg.clearResults()
collectgarbage()
end
