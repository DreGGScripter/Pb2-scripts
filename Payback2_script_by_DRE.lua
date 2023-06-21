gg.sleep(1000)
function Home()
menu = gg.choice({
"Immortal",
"no Reload",
"Run Speed/no Reload",
"No Reload Grenades",
"Ammo For Rocket",
"EXIT5"},nil," PAYBACK 2 menu by Dre")
if menu == nil then
gg.toast("Canceled")
else

if menu == 1 then
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.setVisible(false) -- hide gg gui

gg.clearResults() -- clear the results

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

-- save the result and clear it
t = gg.getResults(1)
gg.clearResults()

-- adjust the value
t[1].address = t[1].address + 0x154
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[1].value = 1

--set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("Immortal activated!",true)
end

if menu == 2 then
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.setVisible(false) -- hide gg gui

gg.clearResults() -- clear the results

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
-- save the result and clear it
t = gg.getResults(1)
gg.clearResults()

-- adjust the value
t[1].address = t[1].address + 0x74
t[1].flags = gg.TYPE_WORD
t[1].freeze = true
t[1].value = 13
--set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("No Reload Active!",true)
end

if menu == 3 then
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.setVisible(false) -- hide gg gui

gg.clearResults() -- clear the results

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
-- save the result and clear it
t = gg.getResults(1)
gg.clearResults()

-- adjust the value
t[1].address = t[1].address + 0x74
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[1].value = 1
--set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("Speed Active!",true)
end

if menu == 4 then
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.setVisible(false) -- hide gg gui

gg.clearResults() -- clear the results

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
-- save the result and clear it
t = gg.getResults(1)
gg.clearResults()

-- adjust the value
t[1].address = t[1].address + 0x74
t[1].flags = gg.TYPE_WORD
t[1].freeze = true
t[1].value = -63
--set it
gg.setValues(t)
gg.addListItems(t)
gg.toast("No Reload Grenades!",true)
end

if menu == 5 then
gg.setRanges(gg.REGION_C_BSS) -- only pick one of 3 for best speed
gg.setVisible(false) -- hide gg gui

gg.clearResults() -- clear the results

gg.alert('Rocket Ammo Must Be At 100')
gg.sleep(1e3) -- 1000
gg.searchNumber(100,gg.TYPE_WORD)
gg.getResults(100)
gg.editAll(30000,gg.TYPE_WORD)
end

if menu == 6 then
os.exit()
end


Dre = -1
end
end

function Exit()
gg.clearResults()
os.exit()
end

while true do
if gg.isVisible(true) then
Dre = 1
gg.setVisible(false)
Dre = -1
Home()
end
end
