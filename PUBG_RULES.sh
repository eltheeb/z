#!/system/bin/sh
IP6TABLES=/system/bin/ip6tables
IPTABLES=/system/bin/iptables 
PORT=$(cat /data/adb/Proxcrypt/HIDE_PORT)
STRING=$(cat /data/adb/Proxcrypt/HIDE_STRING)
HEX=$(cat /data/adb/Proxcrypt/HIDE_HEX)
for P in $PORT;do
# These two new lines sets DNS running at 127.0.0.1 on port 5354 
$IPTABLES -t nat -A OUTPUT -p tcp ! -d 1.1.1.1 --dport  $P -j DNAT --to-destination 127.0.0.1:5354
$IPTABLES -t nat -A OUTPUT -p udp ! -d 1.1.1.1 --dport  $P -j DNAT --to-destination 127.0.0.1:5354
$IPTABLES -A INPUT -p tcp --destination-port $P -j DROP
$IPTABLES -A OUTPUT -p tcp --destination-port $P -j DROP
$IPTABLES -A INPUT -p udp --destination-port $P -j DROP
$IPTABLES -A OUTPUT -p udp --destination-port $P -j DROP
done
for S in $STRING; do
#STRING DEFFENDER
$IPTABLES  -A INPUT -m string --algo bm --string "$S" -j DROP
$IPTABLES  -A OUTPUT -m string --algo bm --string "$S" -j DROP
$IPTABLES  -A FORWARD -m string --algo bm --string "$S" -j DROP
done
set -f "$HEX"
IFS=$'\n'
for H in "$HEX";do
#HEX STRING
$IPTABLES \
--append INPUT \
--match string \
--algo kmp \
--hex-string "|$H|" \
--jump DROP

$IPTABLES \
--append OUTPUT \
--match string \
--algo kmp \
--hex-string "|$H|" \
--jump DROP

$IPTABLES \
--append FORWARD \
--match string \
--algo kmp \
--hex-string "|$H|" \
--jump DROP
done

#DX_CHANNEL
#$IPTABLES -I INPUT -p tcp -j DROP &> /dev/null;
#$IP6TABLES -I INPUT -p tcp -j DROP &> /dev/null;
#$IPTABLES -I OUTPUT -p tcp -j DROP &> /dev/null;
#$IP6TABLES -I OUTPUT -p tcp -j DROP &> /dev/null;



# DROP PORT LISTENER

