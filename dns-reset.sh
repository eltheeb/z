#!/system/bin/sh

IP6TABLES=/system/bin/ip6tables
IPTABLES=/system/bin/iptables

$IPTABLES -F
$IPTABLES -X
$IPTABLES -t nat -F
$IPTABLES -t nat -X