if [ ! -d /data/data/com.tencent.ig/shared_prefs ]
then echo "com.tencent.ig not founded!"
else
GUEST="/data/data/com.tencent.ig/shared_prefs/device_id.xml"
echo -n "Guest in com.tencent.ig "
fi
if [ "$(grep -wo "install" $GUEST)" = "install" ]
then
INSTALL=$(grep -w "install" $GUEST)
else
INSTALL="    <string name=\"install\">Repachino</string>"
fi
#uuid geneeator
for symbol in q a z w s x e d c r f v t g b y h n u j m i k o l p 1 2 3 4 5 6 7 8 9 0 Repachino
do rand=$rand$symbol
done
RANDOM=256
for i in $(seq 1 32)
do
uuid=$uuid${rand:$(expr $RANDOM % ${#rand}):1}
done
#uuid generator
kill com.tencent.ig > /dev/null 2>&1
cp $GUEST $GUEST.bak
echo -n "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
$INSTALL
    <string name=\"uuid\">$uuid</string>
</map>
" > $GUEST
echo "changed"
rm -rf /data/data/com.tencent.ig/databases
rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml.bak
rm -rf /data/media/0/Android/data/com.tencent.ig/files/login-identifier.txt
rm -rf /data/media/0/.backups/com.tencent.ig
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json
chmod -R 660 $GUEST
echo "By AboHamzeh"
