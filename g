on = 'أيقاف '
off = 'تشغيل '
      f=io.open("/storage/emulated/0/Android/data/officeg/m","rb")
   if f==nil then    
      gg.alert('أنت غير مشترك أحلق من هون')
     os.exit()
      else 
     gg.toast('تم التحقق من الأشتراك')
    end
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
function PS() end
function setvalue(address,flags,value) PS('Modify address value (address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "open失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "open失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "open,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "open失败") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.addListItems(t) else gg.toast("无数据", false) return false end else gg.toast("Not Found") return false end end

function HOME()
SN = gg.choice({
 "🛡️⁩  تفعيل الحماية لجميع النسخ  🛡️⁩",	
    "🧡 التفعيلات السريعه 🧡",    
   "👍التفعيلات باللوبي 👍",
   "🚨 تفعيلات الساحة 🚨",      
"💦 قفل المشاهدة مع مسح البلاغات 💦",    
    "🔄ريسيت سريع 🔄",    
"🚀 『 طيران اللاعب طول القيم 』🚀" .. antifall,
    "📷  قائمة السكوبات 📷",    
       "🚔  قفزة الجيب 🚔",    
          "🚗 قفزة الداسيا 🚗",    
             "🏎️  قفزة البقي 🏎️",    
    "🌈 الوال هاك 🌈",                        
    "✈ خروج ✈"
}, nil, "      ")
if SN == nil then else
if SN ==  1 then nbypas() end
if SN ==  2 then safe() end 
if SN ==  3 then lo() end 
if SN ==  4 then extra() end
if SN ==  5 then POTTT() end
if SN ==  6 then DNF() end
if SN ==  7 then fbr() end
if SN ==  8 then SCOP1() end
if SN ==  9 then JEEPJUMP() end
if SN ==  10 then DACIAJUMP() end
if SN ==  11 then BUGGYJUMP() end
if SN ==  12 then BDY() end
if SN ==  13 then EXIT() end
end
PUBGMH = -1
end

function safe()
SL = gg.multiChoice({
"ثبات 100%    ️"  .. lnr1,	 
"أيمبوت  ☠ " .. laim1,
"منضور ايباد  " ..lipv1,
"ازالة عشب  " ..lng1,
"ازالة ضباب  " ..lpov1,
"قفزة   "   .. lsp1,
"تصغير المؤشر  " .. lsc1,
"جسم أسود  " ..lbb1,
"سماء سوداء   " ..lbs1,
"الوضع الليلي  "  ..lnm1,
"طلق سريع  " ..hit1,
"مجك بولت  " ..lmg1,
"خروج"
}, nil, " مش لكل الأجهزة ")
if SL == nil then else
if SL[1] == true then lnr() end
if SL[2] == true then laim() end
if SL[3] == true then lipv() end
if SL[4] == true then lng() end
if SL[5] == true then lpov() end
if SL[6] == true then lsp() end
if SL[7] == true then lsc() end
if SL[8] == true then lbb() end
if SL[9] == true then lbs() end
if SL[10] == true then lnm() end
if SL[11] == true then hit() end
if SL[12] == true then lmg() end
if SL[13] == true then HOME() end
end 
PUBGMH = -1 end
function tt()
gg.clearResults()   
gg.setRanges(131072)   
gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)    
gg.searchNumber("26", 16, false, 536870912, 0, -1)    
gg.getResults(2)    
gg.editAll("-460", 16)   
gg.clearResults()    
gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)    
gg.searchNumber("28", 16, false, 536870912, 0, -1)    
gg.getResults(2)    
gg.editAll("-560", 16)    
gg.clearResults()   
 gg.setRanges(32) 
 gg.searchNumber("9.201618;30.5;25", 16, false, 536870912, 0, -1)   
 gg.searchNumber("30.5;25", 16, false, 536870912, 0, -1)    
gg.getResults(10)   
 gg.editAll("200", 16)    
gg.clearResults()  
 gg.setRanges(16)  
  gg.searchNumber("2048D;1F", 16, false, 536870912, 0, -1)   
 gg.searchNumber("1", 16, false, 536870912, 0, -1)    
gg.getResults(100)   
 gg.editAll("0.07", 16)    
gg.clearResults()    
gg.setRanges(16384) 
  gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", 16, false, 536870912, 0, -1)    
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)   
 gg.getResults(100)    
gg.editAll("125", 16)   
 gg.clearResults()   
 gg.setRanges(131072)  
 gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", 16, false, 536870912, 0, -1)  
  gg.searchNumber("0.0001", 16, false, 536870912, 0, -1) 
  gg.getResults(500) 
 gg.editAll("-125", 16) 
  gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458.43;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)    
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)    
gg.getResults(100)  
gg.editAll("500", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("245", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300;305", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(-1.4278110478704994E28, gg.TYPE_FLOAT)
gg.getResultsCount()
gg.getResults(0)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(-3.254379949369797E30, gg.TYPE_FLOAT)
 gg.getResultsCount() 
gg.getResults(9)
 gg.clearResults() 
gg.setVisible(false) 
gg.getValues({ [1] = { ['address'] = 0xcc5590d8,['flags'] = 16, }, 
[2] = { ['address'] = 0xcc8e6cbc,['flags'] = 16, }, 
[2] = { ['address'] = 0xce6b7258,['flags'] = 16, },
 [2] = { ['address'] = 0xce911214,['flags'] = 16, }, 
[2] = { ['address'] = 0xceb49fb8,['flags'] = 16, },
 [2] = { ['address'] = 0xceb714a4,['flags'] = 16, }, 
[2] = { ['address'] = 0xceb8d74c,['flags'] = 16, },
 [2] = { ['address'] = 0xcfaf1064,['flags'] = 16, }, 
[2] = { ['address'] = 0xcfaf18b4,['flags'] = 16, }, }) 
gg.toast("تم") 
gg.clearResults()
end

lmg1 = off
function lmg()
if lmg1 == off then
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B65608
setvalue(so+py, gg.TYPE_FLOAT, 75.0)
gg.toast("ماجيك ")
lmg1 = on
else
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B65608
setvalue(so+py, gg.TYPE_FLOAT, 0.10000000149)
gg.toast("ماجيك أيقاف")
lmg1 = off
end
end

hit1 = off
function hit()
if hit1 == off then
so=gg.getRangesList('libUE4.so')[1].start
py=0x37C1BA4
setvalue(so+py, gg.TYPE_FLOAT, 0)
gg.toast("طلق سريع ")
hit1 = on
else
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B64788
setvalue(so+py, gg.TYPE_FLOAT, -1.42781105e28)
gg.toast("طلق سريع أيقاف")
hit1 = off
end
end
lnm1 = off
function lnm()
if lnm1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x2E082FC
setvalue(so + py, gg.TYPE_FLOAT, 0)
gg.toast(' الوضع اليلي تشغيل ')
lnm1 =on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x2E082FC
setvalue(so + py, gg.TYPE_FLOAT, -2.7414967e28)
gg.toast(' الوضع اليلي ايقاف ')
lnm1 =off
end
end
lbs1 = off
function lbs()
if lbs1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x39E0C50
setvalue(so + py, gg.TYPE_FLOAT, -0.00001)
gg.toast(' سماء سوداء ')
lbs1 = on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x39E0C50
setvalue(so + py, gg.TYPE_FLOAT, 0.0)
gg.toast(' سماء سوداء ايقاف ')
lbs1 = off
end
end
lbb1 = off
function lbb()
if lbb1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x2CBD788
setvalue(so +  py, gg.TYPE_FLOAT, 14)
gg.toast(' جسم اسود ')
lbb1 = on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x2CBD788
setvalue(so +  py, gg.TYPE_FLOAT, 0.0001)
gg.toast(' جسم اسود أيقاف')
lbb1 = off
end
end

lnr1 = off
function lnr()
if lnr1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x130CBF0
setvalue(so +  py, gg.TYPE_FLOAT, 0)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x367EC84
setvalue(so +  py, gg.TYPE_FLOAT, 0)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x372D818
setvalue(so +  py, gg.TYPE_FLOAT, 0)
gg.toast(' ثبات ')
lnr1 = on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x130CBF0
setvalue(so +  py, gg.TYPE_FLOAT, -2.786982e28)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x367EC84
setvalue(so +  py, gg.TYPE_FLOAT, -1.1144502e28)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x372D818
setvalue(so +  py, gg.TYPE_FLOAT, -1.1144502e28)
gg.toast(' ثبات ايقاف ')
lnr1 = off
end
end

laim1 = off
function laim()
if laim1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x24A75F0
setvalue(so +  py, gg.TYPE_FLOAT, 99999)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x24A74BC
setvalue(so +  py, gg.TYPE_FLOAT, 0)
gg.toast(' ايمبوت ')
laim1 = on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x24A75F0
setvalue(so +  py, gg.TYPE_FLOAT, 0.0001)
so = gg.getRangesList("libUE4.so")[1].start
py = 0x24A74BC
setvalue(so +  py, gg.TYPE_FLOAT, 2015175168.0)
gg.toast(' ايمبوت أيقاف')
laim1 = off
end
end

lipv1 = off
function lipv()
if lipv1 == off then
so = gg.getRangesList("libUE4.so")[1].start
py = 0x37307E0
setvalue(so +  py, gg.TYPE_FLOAT, 240)
gg.toast(' ايباد ')
lipv1 = on
else
so = gg.getRangesList("libUE4.so")[1].start
py = 0x37307E0
setvalue(so +  py, gg.TYPE_FLOAT, 360.0)
gg.toast(' ايباد أيقاف')
lipv1 = off
end
end
lng1 = off
function lng()
if lng1 == off then
so = gg.getRangesList("libUE4.so")[1].start ---NO GRASS
py = 0x2475D58
setvalue(so +  py, gg.TYPE_FLOAT, 0)
gg.toast(' أزالة العشب ')
lng1 = on
else
so = gg.getRangesList("libUE4.so")[1].start ---NO GRASS
py = 0x2475D58
setvalue(so +  py, gg.TYPE_FLOAT, -3.892263e21)
gg.toast(' أزالة العشب أيقاف ')
lng1 = off
end
end
lpov1 = off
function lpov()
if lpov1 == off then
so = gg.getRangesList("libUE4.so")[1].start ---FOG REMOVE
py = 0x2C344C8
setvalue(so +  py, gg.TYPE_FLOAT, 0)
gg.toast(' ازالة ضباب ')
lpov1 = on
else
so = gg.getRangesList("libUE4.so")[1].start ---FOG REMOVE
py = 0x2C344C8
setvalue(so +  py, gg.TYPE_FLOAT, -1.3620439e28)
gg.toast(' ازالة ضباب ايقاف ')
lpov1 = off
end
end
lsp1 = off
function lsp()
if lsp1 == off then
so = gg.getRangesList("libUE4.so")[1].start ---LONG JUMP
py = 0x1150134
setvalue(so + py, 16, -2.8333599234308064E28)
gg.toast(' قفزة ')
lsp1 = on
else
so = gg.getRangesList("libUE4.so")[1].start ---LONG JUMP
py = 0x1150134
setvalue(so + py, 16, -2.8333594e28)
gg.toast(' قفزة أيقاف ')
lsp1 = off
end
end
lsc1 = off
function lsc()
if lsc1 == off then
so = gg.getRangesList("libUE4.so")[1].start ---SMALL CROSSHAIR
py = 0x130C544
setvalue(so +  py, gg.TYPE_FLOAT, 0)
gg.toast(' تصغير المؤشر ')
lsc1 = on
else
so = gg.getRangesList("libUE4.so")[1].start ---SMALL CROSSHAIR
py = 0x130C544
setvalue(so +  py, gg.TYPE_FLOAT, -2.9756183e20)
gg.toast(' تصغير المؤشر ايقاف ')
lsc1 = off
end
end


antifall = off
function fbr()
if antifall == off then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    antif1 = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("9999999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(("Parachute Antifall Activated"))
    antifall = on
  else
    gg.clearResults()
    gg.setValues(antif1)
    gg.clearResults()
    gg.toast(("Parachute Antifall Deactivated"))
    antifall = off
  end
end
antt = off
function ant()
if antt == off then
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
antv = gg.getResults(77777, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7777777", gg.TYPE_FLOAT)  
gg.toast("🇮تم تفعيل الأنتينا ")
antt = on
else
gg.setValues(antv)
gg.toast("🇮تم الأيقاف ")
antt = off
end
end
  fjump = off
  function FRONTJUMPON()
    if fjump == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("16;4,575,657,222,473,777,152;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber("4,575,657,222,473,777,152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("4,575,657,222,488,624,988", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("1,133,903,872;4,611,686,019,455,831,245;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber("4,611,686,019,455,831,245", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("4,611,686,019,501,674,988", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
      gg.searchNumber("-6.1526231e27;-1.0070975e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      sjumpff1 = gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Front Jump Activated!"))
      fjump = on
    else
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("16;4,575,657,222,488,624,988;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber("4,575,657,222,488,624,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("4,575,657,222,473,777,152", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("1,133,903,872;4,611,686,019,501,674,988;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.searchNumber("4,611,686,019,501,674,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("4,611,686,019,455,831,245", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setValues(sjumpff1)
      gg.clearResults()
      gg.clearResults()
      gg.toast(("Front Jump Deactivated"))
      fjump = off
    end
  end

function hed()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("هيد....")
end

function POTTT()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('909391408;808923191::8', gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll('1089886885', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('909391408', gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll('1089886885', gg.TYPE_DWORD)
gg.toast('تم قفل المشاهدة')
end
function DNF()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("220676386071773185", gg.TYPE_QWORD)
  gg.getResults(69)
  gg.editAll("220676386036121600", gg.TYPE_QWORD)
  gg.sleep(6000)
  gg.editAll("220676386071773185", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast(" 𝗗𝗢𝗡𝗘 ")
end
function extra()
SNN = gg.multiChoice({
" أنتينا لكل اللاعبين   "..antt,	
  "هيدشوت + مجك بولت    ☠ ",
  "تشغيل أيمبوت أبو جهل    ☠",       
   "تشغيل دمج عالي    ☠",              	    	       
   "تشغيل منضور الأيباد  ",
  "أزالة الضباب",	  
    "تشغيل القفز التلقائي ",	  	
    "قفزة للأمام خطيرة  ☠ ️".. fjump,	 
  "أوم بدون تعشيق",  	 	            	          	    	  	    	               
"➡️ 『 رجوع 』"
  }, nil, "  ")
if SNN == nil then
else
if SNN[1] == true then ant() end
if SNN[2] == true then hed() end
if SNN[3] == true then aim360() end
if SNN[4] == true then tt() end
if SNN[5] == true then ipv() end
if SNN[6] == true then fog() end
if SNN[7] == true then aj() end
if SNN[8] == true then FRONTJUMPON() end
if SNN[9] == true then mw6() end
if SNN[10] == true then HOME() end
end
PUBGMH = -1
end


function fog()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1759781550398895551", gg.TYPE_QWORD)
  gg.getResults(69)
  gg.editAll("-1759781550398895550", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("تم أزالة الضباب")
end  


function aj()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,890,205,508,990,664,704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
  gg.editAll("4,890,205,509,012,684,800", gg.TYPE_QWORD)
  gg.toast("🧗‍♂️ɴᴇᴡ ᴡᴀʟʟ ᴊᴜᴍᴘ on")
 end
 
function mw6()   
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('91000;2.29999995232;1.8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2.29999995232;1.8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll('0', gg.TYPE_FLOAT)
    gg.toast('AWM No Reload Aktif')
    
  end
function aim360()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("2015175168", 16, false, 536870912, 0, -1, 0)
    gg.processResume()
    gg.getResults(100, 0, 0, -1, null, null, 0, null, 0)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.toast("أبو جهل أشتغل!")    
end

function ipv() 
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("220;178;15 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(300)
    gg.editAll("335", gg.TYPE_FLOAT)
gg.toast("Ipad view on !")
end

function lo()
Sm = gg.multiChoice({
 "أزالة العشب ",
   "ثبات السلاح 100% ",    
        "ثبات السلاح 50% ",    
     "منع أهتزاز السلاح ",    	
     "ثبات السلاح V2 100% ",     
"➡️ 『 رجوع 』"
  }, nil, "  ")
if Sm == nil then
else
if Sm[1] == true then ng() end
if Sm[2] == true then nr() end
if Sm[3] == true then LESSREC2() end
if Sm[4] == true then NOSHAKE() end
if Sm[5] == true then LR3() end
if Sm[6] == true then HOME() end
end
PUBGMH = -1
end
function LESSREC2()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(("Less Recoil Activated"))
    gg.clearResults()
  end

  function NOSHAKE()
    Name = "Anti Shake"
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0}, {-499122175, 4}, {-481296380, 8}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0}, {-2.8111605430681328E28, -12}, {-1476732160.0, -8}, {-3.7444097189855772E28, -4}, {128.0, 4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
    gg.toast(("Anti Shake Activated"))
  end
function LR3()
  gg.clearResults()
  gg.setRanges(8)
  gg.setVisible(false)
  gg.searchNumber("-2.2673448e24;-1.36203639e28", 16, false, 536870912, 0, -1)
  gg.searchNumber("-1.36203639e28", 16, false, 536870912, 0, -1)
  gg.getResults(99)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("3.8126822e-21;-1.1144502e28;-2.0291021e20:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("328")
  gg.getResults(551)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
  gg.getResults(200)
  gg.editAll("0", 16)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("🌟No Recoil 100% ✔️")
      gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
    gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
    gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
    gg.getResults(50)
    gg.editAll("-0.5", 16)
    gg.clearResults()
    gg.toast(("Small Crosshair Activated"))
end

function ng()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
  gg.toast("🍀ɴᴏ ɢʀᴀss")
  end
  function nr()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-2.2673448e24;-1.36203639e28", 16, false, 536870912, 0, -1)
gg.searchNumber("-1.36203639e28", 16, false, 536870912, 0, -1)
gg.getResults(99)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.11445016E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B8", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(891)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1337)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Less Recoil Activated")
end

 zoomx4 = off
  zoomx8 = off
  zoomx15 = off
  function SCOP1()
    SCOP1NMN = gg.choice({
      "🔭 『 تكبير الريد دوت / هولو x4 』" .. zoomx4,
      "🔭 『 تكبير الريد دوت / هولو x8 』" .. zoomx8,
      "🔭 『 تكبير الريد دوت / هولو x15 』" .. zoomx15,
      ("⁦➡️⁩ 『 رجوع 』")
    }, nil, (""))
    if SCOP1NMN == nil then
    else
      if SCOP1NMN == 1 then
        ZOOM4()
      else
      end
      if SCOP1NMN == 2 then
        ZOOM8()
      else
      end
      if SCOP1NMN == 3 then
        ZOOM15()
      else
      end
      if SCOP1NMN == 4 then
        HOME()
      else
      end
    end
    PUBGMH = -1
  end

  

  function ZOOM4()
    if zoomx4 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("20", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 4x ✔ activated!"))
      zoomx4 = on
    else
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;20;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("55", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 4x ✔ Deactivated"))
      zoomx4 = off
    end
  end

  function ZOOM8()
    if zoomx8 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("15", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 8x ✔ activated!"))
      zoomx8 = on
    else
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;15;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("55", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 8x ✔ Deactivated"))
      zoomx8 = off
    end
  end

  function ZOOM15()
    if zoomx15 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;55;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("9", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 15x ✔ activated!"))
      zoomx15 = on
    else
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("60;9;1.9618179e-44\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(300)
      gg.editAll("55", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Zoom 15x ✔ Deactivated"))
      zoomx15 = off
    end
  end
function nbypas()
kk = gg.choice({
" 『⛔ سيرفر 1 ⛔ 』",
" 『⛔ سيرفر 2 ⛔ 』",
" 『⛔ سيرفر 3 ⛔ 』",
" 『⛔ سيرفر 4 ⛔ 』",
" 『⛔ سيرفر 5 ⛔ 』",
" 『⛔ سيرفر 6 M ⛔ 』",
" 『⛔ سيرفر 7 R ⛔ 』",
" 『⛔ سيرفر 8 كورية فقط ⛔ 』",
" 『⛔ سيرفر 9 عالمية فقط ⛔ 』",
"➡️ 『 رجوع 』"
}, nil, "      ")
if kk == nil then
else
if kk == 1 then
ser1()
end
if kk == 2 then
ser2()
end
if kk == 3 then
ser3()
end
if kk == 4 then
ser4()
end
if kk == 5 then
ser5()
end
if kk == 6 then
ser6()
end
if kk == 7 then
ser7()
end
if kk == 8 then
f3()
end
if kk == 9 then
f5()
end
if kk == 10 then
HOME()
end
end
PUBGMH = -1
end
function ser1()
    gg.clearResults()
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations/concurrent"))
    os.remove(("third_party.java_src.error_prone.project.annotations.Google_internal"))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
      gg.processKill()
      os.exit()
    end
    gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    L7_10 = gg.getResultCount()
    jz = gg.getResults(L7_10)
    for i = 1, L7_10 do
      gg.addListItems({
        [1] = {
          address = jz[i].address + 236,
          flags = 4,
          freeze = true,
          value = 16384
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 232,
          flags = 4,
          freeze = true,
          value = 16384
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 228,
          flags = 4,
          freeze = true,
          value = 16384
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 340,
          flags = 4,
          freeze = true,
          value = 16384
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 344,
          flags = 4,
          freeze = true,
          value = 16384
        }
      })
    end
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("135682;144387", gg.TYPE_DWORD)
    gg.refineNumber("135682", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;131586", gg.TYPE_DWORD)
    gg.refineNumber("134658", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4096;135682", gg.TYPE_DWORD)
    gg.refineNumber("4096", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;262403", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378;262403", gg.TYPE_DWORD)
    gg.refineNumber("133378", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;133634", gg.TYPE_DWORD)
    gg.refineNumber("131330", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131842;132098", gg.TYPE_DWORD)
    gg.refineNumber("131842", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("133376", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearList()
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
    gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
    else
      gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      L7_10 = gg.getResultCount()
      jz = gg.getResults(L7_10)
      for i = 1, L7_10 do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 280,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
      end
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
    else
      gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      L7_10 = gg.getResultCount()
      jz = gg.getResults(L7_10)
      for i = 1, L7_10 do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.clearResults()
      end
    gg.alert("تم تفعيل حماية 1")
  end
  end



function ser2()
os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations/concurrent"))
    os.remove(("third_party.java_src.error_prone.project.annotations.Google_internal"))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
      gg.processKill()
      os.exit()
    end
    gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    L7_10 = gg.getResultCount()
    jz = gg.getResults(L7_10)
    for i = 1, L7_10 do
      gg.addListItems({
        [1] = {
          address = jz[i].address + 236,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 232,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 228,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 340,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 344,
          flags = 4,
          freeze = true,
          value = -1
        }
      })
    end
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.86902378e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8439126e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8726112e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8403253e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("1.9204614e31", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(16384)
    gg.searchNumber("1,601,463,655", gg.TYPE_DWORD)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("825.14465332031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(8)
    gg.searchNumber("825.14465332031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("3.2089735e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(8)
    gg.searchNumber("3.2089735e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67593", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16)
    gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("16384", gg.TYPE_DWORD)
    revert = gg.getResults(15, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(15, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(15, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
    gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
    else
      gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      L7_10 = gg.getResultCount()
      jz = gg.getResults(L7_10)
      for i = 1, L7_10 do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.clearResults()
      end
    end
    gg.alert("تم تفعيل حماية 2")
  end



function ser5()
os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations/concurrent"))
    os.remove(("third_party.java_src.error_prone.project.annotations.Google_internal"))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.86902378e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8439126e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8726112e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.8403253e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.setVisible(false)
    gg.searchNumber("133,732", gg.TYPE_DWORD)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.setVisible(false)
    gg.searchNumber("925906226", gg.TYPE_DWORD)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("1.9204614e31", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(16384)
    gg.searchNumber("1,601,463,655", gg.TYPE_DWORD)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("825.14465332031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(8)
    gg.searchNumber("825.14465332031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("3.2089735e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(8)
    gg.searchNumber("3.2089735e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.setVisible(false)
    revert = gg.getResults(999999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67593", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(2000000, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.alert("تم تفعيل حماية 5")
  end


function ser4()
gg.clearResults()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("2D;2.2958874e-41;16384D;16384D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("خطأ⚠️\n تأكد من تحميل ببجي 32 بت")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i =1, n do
gg.addListItems({
[1] = { address = jz[i].address - 64, flags = 4, freeze = true, value = 70086 } 
})
gg.addListItems({
[1] = { address = jz[i].address + 30, flags = 4, freeze = true, value = 119 }
})
gg.addListItems({
[1] = { address = jz[i].address + 130, flags = 4, freeze = true, value = 70086 }
})
gg.addListItems({
[1] = { address = jz[i].address + 180, flags = 4, freeze = true, value = 70086 }
})
gg.addListItems({
[1] = { address = jz[i].address + 200, flags = 4, freeze = true, value = 4451 }
})
gg.addListItems({
[1] = { address = jz[i].address + 300, flags = 4, freeze = true, value = 0 }
})
gg.addListItems({
[1] = { address = jz[i].address + 310, flags = 4, freeze = true, value = 70086 }
})
gg.addListItems({
[1] = { address = jz[i].address + 360, flags = 4, freeze = true, value = 70086 }
})
gg.addListItems({
[1] = { address = jz[i].address + 450, flags = 4, freeze = true, value = 70086 }
})
gg.addListItems({
[1] = { address = jz[i].address + 650, flags = 4, freeze = true, value = 70086 }
})
end
end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;135682", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387;144387", gg.TYPE_DWORD)
gg.refineNumber("144387", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;134658", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586;131586", gg.TYPE_DWORD)
gg.refineNumber("131586", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,073;131,073", gg.TYPE_DWORD)
gg.refineNumber("131,073", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;134914", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;133378", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262403;262403", gg.TYPE_DWORD)
gg.refineNumber("262403", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.alert("تم تفعيل حماية 4")
end



function ser3()
gg.clearResults()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
if gg.getResultCount() == 0 then
gg.alert("خطأ \n تاكد من تحميل نسخه 32 بت")
gg.processKill()
os.exit()
else
gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = jz[i].address + 236,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = jz[i].address + 232,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = jz[i].address + 228,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = jz[i].address + 340,flags = 4,freeze = true,value = -1}})
gg.addListItems({[1] = {address = jz[i].address + 344,flags = 4,freeze = true,value = -1}})
end
end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("133376", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearList()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
gg.clearResults() 
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber("131330;131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
if gg.getResultCount() == 0 then 
gg.alert("خطأ \n تاكد من تحميل نسخه 32 بت")
else 
gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1)
n = gg.getResultCount() 
jz = gg.getResults(n) 
for i = 1, n do 
gg.addListItems({ [1] = { address = jz[i].address - 280, flags = 4, freeze = true, value = -1}})
end
gg.alert("تم تفعيل حمايه 3")
end
end


function ser6()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.searchNumber("133378", gg.TYPE_DWORD)
gg.searchNumber("133378", gg.TYPE_DWORD)
gg.searchNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.searchNumber("66306", gg.TYPE_DWORD)
gg.searchNumber("66306", gg.TYPE_DWORD)
gg.searchNumber("66306", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.searchNumber("263170", gg.TYPE_DWORD)
gg.searchNumber("263170", gg.TYPE_DWORD)
gg.searchNumber("263170", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.searchNumber("1635085427;1735355484", gg.TYPE_DWORD)
gg.refineNumber("1735355484", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("1734438217", gg.TYPE_DWORD)
gg.alert("تم تفعيل الحمايه")
end
function ser7()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.processResume()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.setVisible(true)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(551977)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("66306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("66306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("66306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("263170", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("263170", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("263170", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
gg.alert(("Aɴᴛɪʙᴀɴ Sᴜᴄᴄᴇssғᴜʟ ✅"))
end

function f3()
 gg.clearResults()
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations/concurrent"))
    os.remove(("third_party.java_src.error_prone.project.annotations.Google_internal"))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
      gg.processKill()
      os.exit()
    else
      gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address + 236,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 232,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 228,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 340,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 344,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
      end
    end
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("135682;144387", gg.TYPE_DWORD)
    gg.refineNumber("135682", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;131586", gg.TYPE_DWORD)
    gg.refineNumber("134658", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4096;135682", gg.TYPE_DWORD)
    gg.refineNumber("4096", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;262403", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378;262403", gg.TYPE_DWORD)
    gg.refineNumber("133378", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;133634", gg.TYPE_DWORD)
    gg.refineNumber("131330", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131842;132098", gg.TYPE_DWORD)
    gg.refineNumber("131842", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("133376", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearList()
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/cache"))
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
    else
      gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 280,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
      end
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
    else
      gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.clearResults()
      end
    end
    gg.alert("تم تفعيل حماية  كوريه 3 \nتحديث 2020/12/2", "التالي")
    end
    
 
       function f5()
      gg.clearResults()
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations"))
    os.remove(("src/main/java/com/google/errorprone/annotations/concurrent"))
    os.remove(("third_party.java_src.error_prone.project.annotations.Google_internal"))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
      gg.processKill()
      os.exit()
    else
      gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address + 236,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 232,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 228,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 340,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 344,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
      end
    end
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("135682;144387", gg.TYPE_DWORD)
    gg.refineNumber("135682", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;131586", gg.TYPE_DWORD)
    gg.refineNumber("134658", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4096;135682", gg.TYPE_DWORD)
    gg.refineNumber("4096", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;262403", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378;262403", gg.TYPE_DWORD)
    gg.refineNumber("133378", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;133634", gg.TYPE_DWORD)
    gg.refineNumber("131330", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131842;132098", gg.TYPE_DWORD)
    gg.refineNumber("131842", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("133376", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearList()
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini"))
    os.remove(("/storage/emulated/0/Android/data/com.pubg.krmobile/cache"))
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
    else
      gg.searchNumber("131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 280,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
      end
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert(("Failed Restart Game And Try , لم يتم التفعيل !! ❌ \n\nقم بتحميل نسخة ال32 بت"))
    else
      gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address - 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 40,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 80,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 120,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 160,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 200,
            flags = 4,
            freeze = true,
            value = -1
          }
        })
        gg.clearResults()
      end
    end
    gg.alert("تم تفعيل حمايه العالميه 5", "التالي")
    end
whitems = off
  function BDY()
    BDYMN = gg.choice({
      "📱 『 قائمة الول هاك 』",
      "🎨 『 قائمة الألوان 』",
      "📱 『 قائمة الأكسينوس و الميديا تك 』",
      "🧰 『 ول هاك للأسلحة والموارد 』" .. whitems,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if BDYMN == nil then
    else
      if BDYMN == 1 then
        WH()
      else
      end
      if BDYMN == 2 then
        CLR()
      else
      end
      if BDYMN == 3 then
        EXY1()
      else
      end
      if BDYMN == 4 then
        WHITEMS()
      else
      end
      if BDYMN == 5 then
        HOME()
      else
      end
    end
    PUBGMH = -1
  end

  
  
  function WHITEMS()
    if whitems == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("4.75926053e21;-7.00649232e-45;4.83304807e21::12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-7.00649232e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whitems1 = gg.getResults(10)
      gg.editAll("5444", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("4.88840463e21;-3.12839322e-39;5.09131994e21::12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-3.12839322e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whitems2 = gg.getResults(10)
      gg.editAll("5444", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Wallhack Items Activated"))
      whitems = on
    else
      gg.clearResults()
      gg.setValues(whitems1)
      gg.setValues(whitems2)
      gg.clearResults()
      gg.toast(("Wallhack Items Deactivated"))
      whitems = off
    end
  end


whs425 = off
  whs430 = off
  whs625 = off
  whs6252 = off
  whs636 = off
  whs660 = off
  whs665 = off
  whs675 = off
  whs6752 = off
  whs710 = off
  whs730 = off
  whs810 = off
  whs820 = off
  whs835 = off
  whs845 = off
  whs855 = off
  whs865 = off
  whsall = off
  function WH()
    WHMN = gg.choice({
      "🔵 『 سناب دراغون 425 』" .. whs425,
      "🔴 『 سناب دراغون 430 』" .. whs430,
      "🔵 『 سناب دراغون 625 』" .. whs625,
      "🔴 『 سناب دراغون 625 v² 』" .. whs6252,
      "🔵 『 سناب دراغون 636 』" .. whs636,
      "🔴 『 سناب دراغون 660 』" .. whs660,
      "🔴 『 سناب دراغون 665 』" .. whs665,
      "🔵 『 سناب دراغون 675 』" .. whs675,
      "🔴 『 سناب دراغون 675 v² 』" .. whs6752,
      "🔵 『 سناب دراغون 710 』" .. whs710,
      "🔴 『 سناب دراغون 730 』" .. whs730,
      "🔵 『 سناب دراغون 810 』" .. whs810,
      "🔴 『 سناب دراغون 820 』" .. whs820,
      "🔵 『 سناب دراغون 835 』" .. whs835,
      "🔴 『 سناب دراغون 845 』" .. whs845,
      "🔵 『 سناب دراغون 855 』" .. whs855,
      "🔴 『 سناب دراغون 865 』" .. whs865,
      "⚫ 『 سناب دراغون جميع الأجهزة 』" .. whsall,
      "🛠️ 『 إصلاح التقطيع 430-835 』",
      "🛠️ 『 إصلاح التقطيع 845-855 』",
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if WHMN == nil then
    else
      if WHMN == 1 then
        WH425()
      else
      end
      if WHMN == 2 then
        WH430()
      else
      end
      if WHMN == 3 then
        WH625()
      else
      end
      if WHMN == 4 then
        WH6252()
      else
      end
      if WHMN == 5 then
        WH636()
      else
      end
      if WHMN == 6 then
        WH660()
      else
      end
      if WHMN == 7 then
        WH665()
      else
      end
      if WHMN == 8 then
        WH675()
      else
      end
      if WHMN == 9 then
        WH6752()
      else
      end
      if WHMN == 10 then
        WH710()
      else
      end
      if WHMN == 11 then
        WH730()
      else
      end
      if WHMN == 12 then
        WH810()
      else
      end
      if WHMN == 13 then
        WH820()
      else
      end
      if WHMN == 14 then
        WH835()
      else
      end
      if WHMN == 15 then
        WH845()
      else
      end
      if WHMN == 16 then
        WH855()
      else
      end
      if WHMN == 17 then
        WH865()
      else
      end
      if WHMN == 18 then
        ALLD()
      else
      end
      if WHMN == 19 then
        FIXWH()
      else
      end
      if WHMN == 20 then
        FIXWH2()
      else
      end
      if WHMN == 21 then
        BDY()
      else
      end
    end
    PUBGMH = -1
  end

  

  function WH865()
    if whs865 == off then
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      wh865s1 = gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      wh865s2 = gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("95D;2", gg.TYPE_FLOAT)
      gg.searchNumber("2", gg.TYPE_FLOAT)
      gg.refineAddress("9B0", gg.TYPE_FLOAT)
      wh865s3 = gg.getResults(69696969)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2.25000452995;2", gg.TYPE_FLOAT)
      gg.searchNumber("2", gg.TYPE_FLOAT)
      gg.refineAddress("6D0", gg.TYPE_FLOAT)
      wh865s4 = gg.getResults(69696969)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 865] Activated"))
      CLR865()
      whs865 = on
    else
      gg.clearResults()
      gg.setValues(wh865s1)
      gg.setValues(wh865s2)
      gg.setValues(wh865s3)
      gg.setValues(wh865s4)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 865] Deactivated"))
      whs865 = off
    end
  end

  function WH665()
    if whs665 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2.0F;1.66231134e-19F;0.0F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F::37", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.refineAddress(("200"))
      wh665s1 = gg.getResults(25)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2.0F;-1.0F;0.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F;-0.0F;0.0F::37", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.refineAddress(("930"))
      wh665s2 = gg.getResults(25)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.refineAddress(("A8C"))
      wh665s3 = gg.getResults(25)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.refineAddress(("B10"))
      wh665s4 = gg.getResults(25)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.refineAddress(("588"))
      wh665s5 = gg.getResults(25)
      gg.editAll("999", 16)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 665] Activated"))
      CLR()
      whs665 = on
    else
      gg.clearResults()
      gg.setValues(wh665s1)
      gg.setValues(wh665s2)
      gg.setValues(wh665s3)
      gg.setValues(wh665s4)
      gg.setValues(wh665s5)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 665] Deactivated"))
      whs665 = off
    end
  end

  function FIXWH()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(("🛠️ Fix Blink 430-835 🛠️"))
  end

  function FIXWH2()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(("🛠️ Fix Blink 845-855 🛠️"))
  end

  function FIXSCOPE()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("2.001", gg.TYPE_FLOAT)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("2.001", gg.TYPE_FLOAT)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(("🛠️ Fix Scope 🛠️"))
  end

  function WH425()
    if whs425 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44:97", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs425s1 = gg.getResults(100)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs425s2 = gg.getResults(100)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("227;1,073,741,824;1,073,741,824;-1,082,130,432;1,073,741,824:49", 4, false, 536870912, 0, -1)
      gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
      whs425s3 = gg.getResults(100)
      gg.editAll("1,123,024,896", 4)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 425] Activated"))
      CLR425()
      whs425 = on
    else
      gg.clearResults()
      gg.setValues(whs425s1)
      gg.setValues(whs425s2)
      gg.setValues(whs425s3)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 425] Deactivated"))
      whs425 = off
    end
  end

  function WH430()
    if whs430 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs430s1 = gg.getResults(999)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs430s2 = gg.getResults(999)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 430] Activated"))
      CLR()
      whs430 = on
    else
      gg.clearResults()
      gg.setValues(whs430s1)
      gg.setValues(whs430s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 430] Deactivated"))
      whs430 = off
    end
  end

  function WH625()
    if whs625 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs625s1 = gg.getResults(10)
      gg.editAll("130", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs625s2 = gg.getResults(10)
      gg.editAll("130", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 625] Activated"))
      CLR()
      whs625 = on
    else
      gg.clearResults()
      gg.setValues(whs625s1)
      gg.setValues(whs625s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 625] Deactivated"))
      whs625 = off
    end
  end

  function WH6252()
    if whs6752 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("5.79227989e21;-5.56955884e-40;2.0;1.39125666e-19;2.0:9285", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs6752s1 = gg.getResults(50)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 625] Activated"))
      CLR()
      whs6752 = on
    else
      gg.clearResults()
      gg.setValues(whs6752s1)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 625] Deactivated"))
      whs6752 = off
    end
  end

  function WH636()
    if whs636 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
      whs636s1 = gg.getResults(1337)
      gg.editAll("1168777216", gg.TYPE_DWORD)
      gg.clearResults()
      gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
      whs636s2 = gg.getResults(1337)
      gg.editAll("1168777216", gg.TYPE_DWORD)
      gg.clearResults()
      gg.clearResults()
      gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      whs636s3 = gg.getResults(1337)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 636] Activated"))
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      whs636s4 = gg.getResults(20)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.toast(("Body Color [SnapDragon 636] Activated"))
      gg.clearResults()
      whs636 = on
    else
      gg.clearResults()
      gg.setValues(whs636s1)
      gg.setValues(whs636s2)
      gg.setValues(whs636s3)
      gg.setValues(whs636s4)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 636] Deactivated"))
      whs636 = off
    end
  end

  function WH660()
    if whs660 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
      gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.processResume()
      gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
      whs660s1 = gg.getResults(63825)
      gg.editAll("130", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
      gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.processResume()
      gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
      whs660s2 = gg.getResults(63825)
      gg.editAll("130", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 660] Activated"))
      CLR()
      whs660 = on
    else
      gg.clearResults()
      gg.setValues(whs660s1)
      gg.setValues(whs660s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 660] Deactivated"))
      whs660 = off
    end
  end

  function WH675()
    if whs675 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs675s1 = gg.getResults(20)
      gg.editAll("130", 16)
      gg.toast(("25%"))
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs675s2 = gg.getResults(10)
      gg.editAll("130", 16)
      gg.toast(("50%"))
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs675s3 = gg.getResults(15)
      gg.editAll("130", 16)
      gg.toast(("75%"))
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      whs675s4 = gg.getResults(10)
      gg.editAll("130", 16)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 675] Activated"))
      CLR675()
      whs675 = on
    else
      gg.clearResults()
      gg.setValues(whs675s1)
      gg.setValues(whs675s2)
      gg.setValues(whs675s3)
      gg.setValues(whs675s4)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 675] Deactivated"))
      whs675 = off
    end
  end

  function WH6752()
    if whs6752 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8.2676609e-44;1.3912565e-19f;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs6752s1 = gg.getResults(6000)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("3.7615819e-37;1.1202056e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.processResume()
      whs6752s2 = gg.getResults(6000)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 675] Activated"))
      CLR675()
      whs6752 = on
    else
      gg.clearResults()
      gg.setValues(whs6752s1)
      gg.setValues(whs6752s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 675] Deactivated"))
      whs6752 = off
    end
  end

  function WH710()
    if whs710 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs710s1 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs710s2 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 710] Activated"))
      CLR()
      whs710 = on
    else
      gg.clearResults()
      gg.setValues(whs710s1)
      gg.setValues(whs710s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 710] Deactivated"))
      whs710 = off
    end
  end

  function WH810()
    if whs810 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs810s1 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs810s2 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 810] Activated"))
      gg.clearResults()
      CLR()
      whs810 = on
    else
      gg.clearResults()
      gg.setValues(whs810s1)
      gg.setValues(whs810s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 810] Deactivated"))
      whs810 = off
    end
  end

  function WH820()
    if whs820 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs820s1 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs820s2 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 820] Activated"))
      gg.clearResults()
      CLR()
      whs820 = on
    else
      gg.clearResults()
      gg.setValues(whs820s1)
      gg.setValues(whs820s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 820] Deactivated"))
      whs820 = off
    end
  end

  function WH835()
    if whs835 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs835s1 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs835s2 = gg.getResults(10)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 835] Activated"))
      gg.clearResults()
      CLR()
      whs835 = on
    else
      gg.clearResults()
      gg.setValues(whs835s1)
      gg.setValues(whs835s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 835] Deactivated"))
      whs835 = off
    end
  end

  function WH845()
    if whs845 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("95D;2", gg.TYPE_FLOAT)
      gg.searchNumber("2", gg.TYPE_FLOAT)
      gg.refineAddress("9B0", gg.TYPE_FLOAT)
      whs845s1 = gg.getResults(69696969)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs845s2 = gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 845] Activated"))
      CLR845()
      whs845 = on
    else
      gg.clearResults()
      gg.setValues(whs845s1)
      gg.setValues(whs845s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 845] Deactivated"))
      whs845 = off
    end
  end

  function WH855()
    if whs855 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("95D;2", gg.TYPE_FLOAT)
      gg.searchNumber("2", gg.TYPE_FLOAT)
      gg.refineAddress("9B0", gg.TYPE_FLOAT)
      whs855s1 = gg.getResults(69696969)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs855s2 = gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 855] Activated"))
      CLR855()
      whs855 = on
    else
      gg.clearResults()
      gg.setValues(whs855s1)
      gg.setValues(whs855s2)
      gg.clearResults()
      gg.toast(("WALLHACK [SnapDragon 855] Deactivated"))
      whs855 = off
    end
  end

  function WH730()
    if whs730 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("95D;2", gg.TYPE_FLOAT)
      gg.searchNumber("2", gg.TYPE_FLOAT)
      gg.refineAddress("9B0", gg.TYPE_FLOAT)
      whs730s1 = gg.getResults(69696969)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      whs730s2 = gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;1194344450;8201;1194379829", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      whs730s3 = gg.getResults(100)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("ᴡᴀʟʟʜᴀᴄᴋ + ♎ ɢʀᴇᴇɴ ʙᴏᴅʏ Activated"))
      whs730 = on
    else
      gg.clearResults()
      gg.setValues(whs730s1)
      gg.setValues(whs730s2)
      gg.setValues(whs730s3)
      gg.clearResults()
      gg.toast(("ᴡᴀʟʟʜᴀᴄᴋ + ♎ ɢʀᴇᴇɴ ʙᴏᴅʏ Deactivated"))
      whs730 = off
    end
  end

  function ALLD()
    if whsall == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("-2 147 086 191", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("4C8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
      whsalls1 = gg.getResults(1337)
      gg.editAll("1168777216", gg.TYPE_DWORD)
      gg.clearResults()
      gg.searchNumber("-2145644352", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
      whsalls2 = gg.getResults(1337)
      gg.editAll("1168777216", gg.TYPE_DWORD)
      gg.clearResults()
      gg.clearResults()
      gg.searchNumber("7,41529732e-29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      whsalls3 = gg.getResults(1337)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("WALLHACK [All Devices] Activated"))
      CLR()
      whsall = on
    else
      gg.clearResults()
      gg.setValues(whsalls1)
      gg.setValues(whsalls2)
      gg.setValues(whsalls3)
      gg.clearResults()
      gg.toast(("WALLHACK [All Devices] Deactivated"))
      whsall = off
    end
  end

  function CLR425()
    CLRMN425 = gg.choice({
      "🔴 『 لون أحمر  425 』",
      "☣️ 『 لون أصفر  425 』",
      ("➡️ 『 رجوع 』")
}, nil, "      ")
    if CLRMN425 == nil then
    else
      if CLRMN425 == 1 then
        RED425()
      else
      end
      if CLRMN425 == 2 then
        YELL425()
      else
      end
      if CLRMN425 == 3 then
        CLR()
      else
      end
    end
    PUBGMH = -1
  end


  function RED425()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineAddress("408", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("96", gg.TYPE_DWORD)
    gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.toast(("Red Body Activated"))
  end

  function YELL425()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineAddress("408", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("95", gg.TYPE_DWORD)
    gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.toast(("Yellow Body Activated"))
  end

  clrwhite675 = off
  clrblue675 = off
  clrgreen675 = off
  function CLR675()
    CLRMN675 = gg.choice({
      "🔴 『 لون أحمر  675 』" .. clrwhite675,
      "🔵 『 لون أزرق  675 』" .. clrblue675,
      "♎ 『 لون أخضر  675 』" .. clrgreen675,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if CLRMN675 == nil then
    else
      if CLRMN675 == 1 then
        WHITE675()
      else
      end
      if CLRMN675 == 2 then
        BLUE675()
      else
      end
      if CLRMN675 == 3 then
        GREEN675()
      else
      end
      if CLRMN675 == 4 then
        CLR()
      else
      end
    end
    PUBGMH = -1
  end



  function GREEN675()
    if clrgreen675 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("69,897;147,457;69,739", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrgreen675s1 = gg.getResults(10)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.toast(("Color 675 Green"))
      gg.clearResults()
      clrgreen675 = on
    else
      gg.clearResults()
      gg.setValues(clrgreen675s1)
      gg.clearResults()
      gg.toast(("Color 675 Green Deactivated"))
      clrgreen675 = off
    end
  end

  function WHITE675()
    if clrwhite675 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("537137162;8200;1194344459:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrwhite675s1 = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Red Body Activated"))
      clrwhite675 = on
    else
      gg.clearResults()
      gg.setValues(clrwhite675s1)
      gg.clearResults()
      gg.toast(("Red Body Deactivated"))
      clrwhite675 = off
    end
  end

  function BLUE675()
    if clrblue675 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("537137162;8200;1194344459;1194344485;8202;1194379568:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrblue675s1 = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Blue Body Activated"))
      clrblue675 = on
    else
      gg.clearResults()
      gg.setValues(clrblue675s1)
      gg.clearResults()
      gg.toast(("Blue Body Deactivated"))
      clrblue675 = off
    end
  end

  clrred845 = off
  clryellow845 = off
  clrgreen845 = off
  clrblue845 = off
  function CLR845()
    CLRMN845 = gg.choice({
      "🔴 『 لون أحمر  845 』" .. clrred845,
      "☣️ 『 لون أصفر  845 』" .. clryellow845,
      "♎ 『 لون أخضر  845 』" .. clrgreen845,
      "🔵 『 لون أزرق  845 』" .. clrblue845,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if CLRMN845 == nil then
    else
      if CLRMN845 == 1 then
        RED845()
      else
      end
      if CLRMN845 == 2 then
        YELL845()
      else
      end
      if CLRMN845 == 3 then
        GREEN845()
      else
      end
      if CLRMN845 == 4 then
        BLUE845()
      else
      end
      if CLRMN845 == 5 then
        CLR()
      else
      end
    end
    PUBGMH = -1
  end


  function YELL845()
    if clryellow845 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;1194344459;8201;1194379823", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clryellow845s1 = gg.getResults(100)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("537133066;8200;1194344459", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clryellow845s2 = gg.getResults(100)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Yellow Body Activated"))
      clryellow845 = on
    else
      gg.clearResults()
      gg.setValues(clryellow845s1)
      gg.setValues(clryellow845s2)
      gg.clearResults()
      gg.toast(("Yellow Body Deactivated"))
      clryellow845 = off
    end
  end

  function RED845()
    if clrred845 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("537133066;8200;1194344459", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrred845s1 = gg.getResults(100)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;1194344459;8201;1194379823", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrred845s2 = gg.getResults(100)
      gg.editAll("8200", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Red Color Activated"))
      clrred845 = on
    else
      gg.clearResults()
      gg.setValues(clrred845s1)
      gg.setValues(clrred845s2)
      gg.clearResults()
      gg.toast(("Red Color Deactivated"))
      clrred845 = off
    end
  end

  function GREEN845()
    if clrgreen845 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;1194344459;8201;1194379823", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrgreen845s1 = gg.getResults(100)
      gg.editAll("8199", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Green Body Activated"))
      clrgreen845 = on
    else
      gg.clearResults()
      gg.setValues(clrgreen845s1)
      gg.clearResults()
      gg.toast(("Green Body Deactivated"))
      clrgreen845 = off
    end
  end

  function BLUE845()
    if clrblue845 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;1194344459;8201;1194379823", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrblue845s1 = gg.getResults(100)
      gg.editAll("8198", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Blue Body Activated"))
      clrblue845 = on
    else
      gg.clearResults()
      gg.setValues(clrblue845s1)
      gg.clearResults()
      gg.toast(("Blue Body Deactivated"))
      clrblue845 = off
    end
  end

  function CLR855()
    CLRMN855 = gg.choice({
      "♎ 『 لون أخضر  855 』" .. clrgreen845,
      "☣️ 『 لون أصفر  855 』" .. clryellow845,
      "🔵 『 لون أزرق  855 』" .. clrblue845,
      "🔴 『 لون أحمر  855 』" .. clrred845,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if CLRMN855 == nil then
    else
      if CLRMN855 == 1 then
        GREEN845()
      else
      end
      if CLRMN855 == 2 then
        YELL845()
      else
      end
      if CLRMN855 == 3 then
        BLUE845()
      else
      end
      if CLRMN855 == 4 then
        RED845()
      else
      end
      if CLRMN855 == 5 then
        CLR()
      else
      end
    end
    PUBGMH = -1
  end
   
  clryellow865 = off
  clrgreen865 = off
  clrpink865 = off
  clrorange865 = off
  function CLR865()
    CLRMN865 = gg.choice({
      "☣️ 『 لون أصفر  865 』" .. clryellow865,
      "♎ 『 لون أخضر  865 』" .. clrgreen865,
      "🧶 『 لون وردي 865 』" .. clrpink865,
      "🍊 『 لون برتقالي 865 』" .. clrorange865,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if CLRMN865 == nil then
    else
      if CLRMN865 == 1 then
        YELL865()
      else
      end
      if CLRMN865 == 2 then
        GREEN865()
      else
      end
      if CLRMN865 == 3 then
        PINK865()
      else
      end
      if CLRMN865 == 4 then
        ORANGE865()
      else
      end
      if CLRMN865 == 5 then
        CLR()
      else
      end
    end
    PUBGMH = -1
  end



  function YELL865()
    if clryellow865 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8196;1194347293;8200;1194380065", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clryellow865s1 = gg.getResults(100)
      gg.editAll("8198", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 865 Activated"))
      clryellow865 = on
    else
      gg.clearResults()
      gg.setValues(clryellow865s1)
      gg.clearResults()
      gg.toast(("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 865 Deactivated"))
      clryellow865 = off
    end
  end

  function GREEN865()
    if clrgreen865 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8196;1194347293;8200;1194380065", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrgreen865s1 = gg.getResults(100)
      gg.editAll("56", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 865 Activated"))
      clrgreen865 = on
    else
      gg.clearResults()
      gg.setValues(clrgreen865s1)
      gg.clearResults()
      gg.toast(("♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 865 Deactivated"))
      clrgreen865 = off
    end
  end

  function PINK865()
    if clrpink865 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8196;1194347293;8200;1194380065", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrpink865s1 = gg.getResults(100)
      gg.editAll("55", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("🧶 ᴘɪɴᴋ ʙᴏᴅʏ 865 Activated"))
      clrpink865 = on
    else
      gg.clearResults()
      gg.setValues(clrpink865s1)
      gg.clearResults()
      gg.toast(("🧶 ᴘɪɴᴋ ʙᴏᴅʏ 865 Deactivated"))
      clrpink865 = off
    end
  end

  function ORANGE865()
    if clrorange865 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8196;1194347293;8200;1194380065", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrorange865s1 = gg.getResults(100)
      gg.editAll("31", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("🍊 ᴏʀᴀɴɢᴇ ʙᴏᴅʏ 865 Activated"))
      clrorange865 = on
    else
      gg.clearResults()
      gg.setValues(clrorange865s1)
      gg.clearResults()
      gg.toast(("🍊 ᴏʀᴀɴɢᴇ ʙᴏᴅʏ 865 Deactivated"))
      clrorange865 = off
    end
  end

  clrred625 = off
  clryellow625 = off
  clrred660 = off
  clryellow660 = off
  clrred835 = off
  clryellow835 = off
  clrwhiteall = off
  clrblackall = off
  function CLR()
    CLRMN = gg.choice({
      "📂 『 قائمة ألوان SD425 』",
      "📂 『 قائمة ألوان SD675 』",
      "📂 『 قائمة ألوان SD845 』",
      "📂 『 قائمة ألوان SD855 』",
      "📂 『 قائمة ألوان SD865 』",
      "🔴 『 لون أحمر  625 』" .. clrred625,
      "☣️ 『 لون أصفر  625 』" .. clryellow625,
      "🔴 『 لون أحمر  660 』" .. clrred660,
      "☣️ 『 لون أصفر  660 』" .. clryellow660,
      "🔴 『 لون أحمر  835 』" .. clrred835,
      "☣️ 『 لون أصفر  835 』" .. clryellow835,
      "⚪ 『 لون أبيض لجميع الأجهزة 』" .. clrwhiteall,
      "⚫ 『 لون أسود لجميع الأجهزة 』" .. clrblackall,
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if CLRMN == nil then
    else
      if CLRMN == 1 then
        CLR425()
      else
      end
      if CLRMN == 2 then
        CLR675()
      else
      end
      if CLRMN == 3 then
        CLR845()
      else
      end
      if CLRMN == 4 then
        CLR855()
      else
      end
      if CLRMN == 5 then
        CLR865()
      else
      end
      if CLRMN == 6 then
        RED625()
      else
      end
      if CLRMN == 7 then
        YELL625()
      else
      end
      if CLRMN == 8 then
        RED660C()
      else
      end
      if CLRMN == 9 then
        YELL660()
      else
      end
      if CLRMN == 10 then
        RED835()
      else
      end
      if CLRMN == 11 then
        YELL835()
      else
      end
      if CLRMN == 12 then
        WHITEALL()
      else
      end
      if CLRMN == 13 then
        BLACKALL()
      else
      end
      if CLRMN == 14 then
        BDY()
      else
      end
    end
    PUBGMH = -1
  end


  function RED660C()
    if clrred660 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrred660s1 = gg.getResults(10)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Red Body Activated"))
      clrred660 = on
    else
      gg.clearResults()
      gg.setValues(clrred660s1)
      gg.clearResults()
      gg.toast(("Red Body Deactivated"))
      clrred660 = off
    end
  end

  function RED625()
    if clrred625 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrred625s1 = gg.getResults(10)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Red Body Activated"))
      clrred625 = on
    else
      gg.clearResults()
      gg.setValues(clrred625s1)
      gg.clearResults()
      gg.toast(("Red Body Deactivated"))
      clrred625 = off
    end
  end

  function YELL625()
    if clryellow625 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("1,080,033,292D;786,441D;8,200D:21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clryellow625s1 = gg.getResults(10)
      gg.editAll("8198", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Yellow Body Activated"))
      clryellow625 = on
    else
      gg.clearResults()
      gg.setValues(clryellow625s1)
      gg.clearResults()
      gg.toast(("Yellow Body Deactivated"))
      clryellow625 = off
    end
  end

  function WHITEALL()
    if clrwhiteall == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      clrwhitealls1 = gg.getResults(1)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("White Body Activated"))
      clrwhiteall = on
    else
      gg.clearResults()
      gg.setValues(clrwhitealls1)
      gg.clearResults()
      gg.toast(("White Body Deactivated"))
      clrwhiteall = off
    end
  end

  function BLACKALL()
    if clrblackall == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      clrblackalls1 = gg.getResults(1)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(("Black Body Activated"))
      clrblackall = on
    else
      gg.clearResults()
      gg.setValues(clrblackalls1)
      gg.clearResults()
      gg.toast(("Black Body Deactivated"))
      clrblackall = off
    end
  end

  function RED835()
    if clrred835 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      clrred835s1 = gg.getResults(10)
      gg.editAll("7", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("🔴 ʀᴇᴅ ʙᴏᴅʏ 835 Activated"))
      clrred835 = on
    else
      gg.clearResults()
      gg.setValues(clrred835s1)
      gg.clearResults()
      gg.toast(("🔴 ʀᴇᴅ ʙᴏᴅʏ 835 Deactivated"))
      clrred835 = off
    end
  end

  function YELL835()
    if clryellow835 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      clryellow835s1 = gg.getResults(999)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      clryellow835s2 = gg.getResults(999)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineAddress("098", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
      clryellow835s3 = gg.getResults(999)
      gg.editAll("8198", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835 Activated"))
      clryellow835 = on
    else
      gg.clearResults()
      gg.setValues(clryellow835s1)
      gg.setValues(clryellow835s2)
      gg.setValues(clryellow835s3)
      gg.clearResults()
      gg.toast(("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835 Deactivated"))
      clryellow835 = off
    end
  end

  function YELL660()
    if clryellow660 == off then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
      gg.searchNumber("536889616;8200;1194344458:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
      gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
      clryellow660s1 = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("1669398530;8200;1194380045:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
      gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
      clryellow660s2 = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast(("Yellow Body Activated"))
      clryellow660 = on
    else
      gg.clearResults()
      gg.setValues(clryellow660s1)
      gg.setValues(clryellow660s2)
      gg.clearResults()
      gg.toast(("Yellow Body Deactivated"))
      clryellow660 = off
    end
  end

  function EXY1()
    EXY1MN = gg.choice({
      "📱 『 ول هاك معالج ʜᴇʟɪᴏ ɢ90ᴛ 』",
      "📱 『 ول هاك اكسينوس 7870 』",
      "📱 『 ول هاك اكسينوس 7885 』",
      "📱 『 ول هاك اكسينوس 8895 』",
      "📱 『 ول هاك اكسينوس 8896 』",
      "📱 『 ول هاك اكسينوس 9810 』",
      "📱 『 ول هاك اكسينوس 9820 』",
      "☣️ 『 لون أصفر 』",
      "☣️ 『 لون أحمر 』",
      "⚪ 『 لون أبيض لجميع الأجهزة 』",
      "⚫ 『 لون أسود لجميع الأجهزة 』",
      ("⁦➡️⁩ 『 رجوع 』")
}, nil, "      ")
    if EXY1MN == nil then
    else
      if EXY1MN == 1 then
        G90T()
      else
      end
      if EXY1MN == 2 then
        EXY7870()
      else
      end
      if EXY1MN == 3 then
        EXY7885()
      else
      end
      if EXY1MN == 4 then
        EXY8895()
      else
      end
      if EXY1MN == 5 then
        EXY8896()
      else
      end
      if EXY1MN == 6 then
        EXY9810()
      else
      end
      if EXY1MN == 7 then
        EXY9820()
      else
      end
      if EXY1MN == 8 then
        EXYYELL()
      else
      end
      if EXY1MN == 9 then
        EXYRED()
      else
      end
      if EXY1MN == 10 then
        WHITEALL()
      else
      end
      if EXY1MN == 11 then
        BLACKALL()
      else
      end
      if EXY1MN == 12 then
        BDY()
      else
      end
    end
    PUBGMH = -1
  end


  function G90T()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5F;0.5F;0.00060000003F;0.99998998642F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    for i, v in ipairs((gg.getResults(100))) do
      if v.flags == gg.TYPE_FLOAT then
        v.value = "2"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100)))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("36", gg.TYPE_DWORD)
    gg.clearResults()
    gg.alert(("Wallhack Helio G90T And Yellow Body Activated"))
  end

  function EXY7870()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.5;0;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("2", gg.TYPE_FLOAT)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.addListItems((gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.alert(("Wallhack Exynos 7870 Activated"))
  end

  function EXY7885()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.58732407e-43;0.0;0.0;0.0;1.12103877e-44;0.0;0.0;0.0;0.0;-0.0;0.5;-340.0;340.0;696.0;0.5;-696.0;0.27913400531;0.56855899096;0.765625;0.0;12000.0:105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineNumber("1.12103877e-44;0.5;-340.0;340.0;696.0;0.5;-696.0;0.765625;0.0;12000.0:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_FLOAT then
        v.value = "1.5"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.searchNumber("40D;32D;16D;2D::53", 4, false, 536870912, 0, -1)
    gg.processResume()
    gg.refineNumber("40", 4, false, 536870912, 0, -1)
    revert = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "36"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("40D;32D;16D;2D::53", 4, false, 536870912, 0, -1)
    gg.processResume()
    gg.refineNumber("40", 4, false, 536870912, 0, -1)
    revert = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "36"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.alert(("Wallhack Exynos 7885 Activated"))
  end

  function EXY8895()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4.2038954e-45;2.8025969e-45;3.5873241e-43;1.1210388e-44;0.5:129", gg.TYPE_FLOAT)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(5, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(5, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_FLOAT then
        v.value = "2"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(5, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.alert(("Wallhack Exynos 8895 Activated"))
  end

  function EXY8896()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.9236357e-43F;2.24207754e-44F;4.31599927e-43F;2.24207754e-44F;1.79366203e-43F;3.58732407e-43F;0.5F:489", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if v.flags == gg.TYPE_FLOAT then
        v.value = "2"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.alert(("Wallhack Exynos 8896 Activated"))
  end

  function EXY9810()
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.5873241e-43;1.1210388e-44;0.5;704.0;1.098618e-42:181", gg.TYPE_FLOAT)
    gg.searchNumber("0.5", gg.TYPE_FLOAT)
    L13_16 = gg.getResults(5)
    gg.editAll("2", gg.TYPE_FLOAT)
    L13_16[1].value = "2"
    L13_16[2].value = "2"
    L13_16[3].value = "2"
    L13_16[4].value = "2"
    L13_16[5].value = "2"
    L13_16[1].freeze = true
    L13_16[2].freeze = true
    L13_16[3].freeze = true
    L13_16[4].freeze = true
    L13_16[5].freeze = true
    gg.addListItems(L13_16)
    gg.clearResults()
    gg.alert(("Wallhack Exynos 9810 Activated"))
  end

  function EXY9820()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("128;256;1144913920;1135869952;1056964608;1144913920;1135869952;1056964608;1061421056;1178304512;939239554;2;32;278528;34", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1056964608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    revert = gg.getResults(1)
    for i, v in ipairs((gg.getResults(1))) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems((gg.getResults(1)))
    gg.processResume()
    gg.clearResults()
    gg.alert(("Wallhack Exynos 9810 Activated"))
  end

  function EXYYELL()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.clearResults()
    gg.searchNumber("12D;64D;16D;32D;3162688022693019688Q;48D;16D;64D;16D;128D::649", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(11)
    gg.editAll("36", gg.TYPE_QWORD)
    gg.clearResults()
    gg.toast(("Yellow Body Deactivated"))
  end

  function EXYRED()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("5;256;26;8;24;25;32:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.refineNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("23", gg.TYPE_DWORD)
    gg.processResume()
    gg.clearResults()
    gg.toast(("Red Body Deactivated"))
  end

function DACIAJUMP()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast(("تم"))
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
end

function BUGGYJUMP()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0.04111111114", gg.TYPE_FLOAT)
   gg.toast(("تم"))
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
end

function JEEPJUMP()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("955", gg.TYPE_FLOAT)
   gg.toast(("تم"))
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
end




function EXIT()    
    print('🇯🇴 BY ABOHAMZEH 🇵🇸')
    gg.setVisible(true)
    os.exit()
  end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if PUBGMH == 1 then
    HOME()
  end
end
