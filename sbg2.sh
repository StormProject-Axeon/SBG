#!/bin/bash
### Color
BIBlue='\033[1;94m'       # Blue
BGCOLOR='\e[1;97;101m'    # WHITE RED
export NC='\033[0m'
RED="\033[31m"
YELLOW="\033[33m"
GRAY="\e[1;30m"
purple="\033[1;95m"
rm $(pwd)/$0
cd /root
[[ "$1" == '--BySBG' ]] && echo -e " ${YELLOW}ESPERA UN MOMENTO $1" > /dev/null 2>&1 && sleep 1 && clear || {
exit&&exit
}
rm -rf /root/*.sh
rm -rf /root/sbg2.sh
JS="107.172.21.231"
function SBG2 () {
ipsaya=$(wget -qO- ipinfo.io/ip)
data_ip=$(cat /usr/bin/kelly)
base=$(cat /usr/bin/vendor_code)

# MODIFICACIÓN: Eliminada la verificación de checkIP.log
# Se procede directamente con la instalación

rm -rf /root/checkIP.log
rm -rf /root/.log*
unzip SBG.zip >/dev/null 2>&1
chmod 755 SBG/* >/dev/null 2>&1
rm -rf SBG.zip >/dev/null 2>&1
clear
}
SBG2
clear
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
start=$(date +%s)
secs_to_human() {
echo "TIEMPO DE INSTALACION : $(( ${1} / 3600 )) horas $(( (${1} / 60) % 60 )) minutos $(( ${1} % 60 )) segundos"
}
rm -rf /etc/rmbl
mkdir -p /etc/rmbl
mkdir -p /etc/rmbl/theme
mkdir -p /var/lib/ >/dev/null 2>&1
echo "IP=" >> /var/lib/ipvps.conf
clear

function SBGINSTALL(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mActualizando Dominio.. \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mActualizando Dominio... \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m Con Exito !\033[1;37m"
    tput cnorm
}
res1() {
bash /root/SBG/dom/dom.sh
rm -rf dom.sh
clear
}
clear
echo -e " ${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e " ${BIBlue}│ ${BGCOLOR}    INGRESA UN USUARIO PARA TU SCRIPT   ${NC}${BIBlue} │"
echo -e " ${BIBlue}╰══════════════════════════════════════════╯"
echo " "
until [[ $author =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "   Introduce tu nombre aquí sin espacios : " -e author
done
echo "$author" > /etc/profil
author=$(cat /etc/profil)
clear
echo -e "${BIBlue}╭═══════════════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│     \033[1;37mSeleccione Opcion para Configurar Dominio     ${BIBlue}│${NC}"
echo -e "${BIBlue}╰═══════════════════════════════════════════════════╯${NC}"
echo -e "${BIBlue}╭═══════════════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│  [ 1 ]  \033[1;37mTu propio Dominio      ${NC}"
echo -e "${BIBlue}│  [ 2 ]  \033[1;37mUtilice Sin Dominio  ${NC}"
echo -e "${BIBlue}╰═══════════════════════════════════════════════════╯"
#until [[ $domain =~ ^[1-2]+$ ]]; do 
read -p "   Por favor seleccione los números 1 o 2 : " domain
#done
if [[ $domain == "1" ]]; then
clear 
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ \033[1;37mAGREGAR OBLIGATORIO DOMINIO O SUBDOMINIO ${BIBlue}│${NC}"
echo -e "${BIBlue}│  \033[1;37mEVITA INSTALAR MAL EL SCRIPT SI YA HAZ  ${BIBlue}│${NC}"
echo -e "${BIBlue}│  \033[1;37mOCUPADO EL DOMINIO VARIAS VECES ANTES   ${BIBlue}│${NC}"
echo -e "${BIBlue}│      \033[1;37mCREA UN SUBDOMINIO NUEVO MEJOR      ${BIBlue}│${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│               \033[1;37mGRACIAS POR                ${BIBlue}│${NC}"
echo -e  "${BIBlue}│        \033[1;37mUSAR MI AUTOSCRIPT PREMIUM        ${BIBlue}│${NC}"
echo -e  "${BIBlue}│                \033[1;37mBY JERRY 2025             ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯"
echo " "
until [[ $dnss =~ ^[a-zA-Z0-9_.-]+$ ]]; do 
read -rp "   Introduce tu Sub/Dominio aquí : " -e dnss
done
#if [[ $dnss == "1" ]]; then
rm -rf /etc/xray
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
echo "$dnss" > /etc/xray/domain
echo "IP=$dnss" > /var/lib/ipvps.conf
echo ""
clear
elif [[ $domain == "2" ]]; then
dom=$(wget -qO- ipinfo.io/ip)
rm -rf /etc/xray
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
echo "$dom" > /etc/xray/domain
echo "IP=$dom" > /var/lib/ipvps.conf
clear
else
rm -rf /etc/xray
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
echo "Se Utiliza IP Subdominio/Dominio Aleatorio"
dom=$(wget -qO- ipinfo.io/ip)
echo "$dom" > /etc/xray/domain
echo "IP=$dom" > /var/lib/ipvps.conf
clear
fi
}
cat <<EOF>> /etc/rmbl/theme/green
BG : \E[40;1;42m
TEXT : \033[1;32m
EOF
cat <<EOF>> /etc/rmbl/theme/yellow
BG : \E[40;1;43m
TEXT : \033[1;33m
EOF
cat <<EOF>> /etc/rmbl/theme/red
BG : \E[40;1;41m
TEXT : \033[1;31m
EOF
cat <<EOF>> /etc/rmbl/theme/blue
BG : \E[40;1;44m
TEXT : \033[1;34m
EOF
cat <<EOF>> /etc/rmbl/theme/magenta
BG : \E[40;1;45m
TEXT : \033[1;35m
EOF
cat <<EOF>> /etc/rmbl/theme/cyan
BG : \E[40;1;46m
TEXT : \033[1;36m
EOF
cat <<EOF>> /etc/rmbl/theme/lightgray
BG : \E[40;1;47m
TEXT : \033[1;37m
EOF
cat <<EOF>> /etc/rmbl/theme/darkgray
BG : \E[40;1;100m
TEXT : \033[1;90m
EOF
cat <<EOF>> /etc/rmbl/theme/lightred
BG : \E[40;1;101m
TEXT : \033[1;91m
EOF
cat <<EOF>> /etc/rmbl/theme/lightgreen
BG : \E[40;1;102m
TEXT : \033[1;92m
EOF
cat <<EOF>> /etc/rmbl/theme/lightyellow
BG : \E[40;1;103m
TEXT : \033[1;93m
EOF
cat <<EOF>> /etc/rmbl/theme/lightblue
BG : \E[40;1;104m
TEXT : \033[1;94m
EOF
cat <<EOF>> /etc/rmbl/theme/lightmagenta
BG : \E[40;1;105m
TEXT : \033[1;95m
EOF
cat <<EOF>> /etc/rmbl/theme/lightcyan
BG : \E[40;1;106m
TEXT : \033[1;96m
EOF
cat <<EOF>> /etc/rmbl/theme/color.conf
lightcyan
EOF
function SBGINSTALL2(){
cd
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
clear
bash /root/SBG/tools.sh &> /dev/null
#chmod +x tools.sh 
#bash tools.sh
clear
start=$(date +%s)
ln -fs /usr/share/zoneinfo/America/Mexico_City /etc/localtime
apt install python2 -y >/dev/null 2>&1
}
function SBGINSTALL3(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    
    (
        # Hapus file fim jika ada
        [[ -e $HOME/fim ]] && rm -f $HOME/fim
        
        # Jalankan perintah di background dan sembunyikan output
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        
        # Buat file fim untuk menandakan selesai
        touch $HOME/fim
    ) >/dev/null 2>&1 &

    tput civis # Sembunyikan kursor
    echo -ne "  \033[0;33mINSTALANDO ARCHIVOS NECESARIOS \033[1;37m- \033[0;33m["
    
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1
        done
        
        # Jika file fim ada, hapus dan keluar dari loop
        if [[ -e $HOME/fim ]]; then
            rm -f $HOME/fim
            break
        fi
        
        echo -e "\033[0;33m]"
        sleep 1
        tput cuu1 # Kembali ke baris sebelumnya
        tput dl1   # Hapus baris sebelumnya
        echo -ne "  \033[0;33mINSTALANDO ARCHIVOS NECESARIOS \033[1;37m- \033[0;33m["
    done
    
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m EXITOSO !\033[1;37m"
    tput cnorm # Tampilkan kursor kembali
}
res2() {
bash /root/SBG/install/ssh-vpn.sh
clear
}
res3() {
bash /root/SBG/install/ins-xray.sh
clear
}
res4() {
bash /root/SBG/sshws/insshws.sh
clear
}
res5() {
bash /root/SBG/install/set-br.sh
clear
}
res6() {
cd /root/SBG/menu
unzip -P SCr1PtByJS menu.zip
chmod 755 menu/*
mv menu/* /usr/local/sbin
rm -rf menu.zip
clear
}
#res7() {
#if [ -d '/etc/xray/dns' ]; then
#clear
#bash /root/SBG/slowdns/slowdns.sh
#else
#clear
#nameserver=$(cat /etc/xray/dns)
#rm -rf /etc/slowdns
#mkdir -m 777 /etc/slowdns
#wget -q -O /etc/slowdns/server.key "https://raw.githubusercontent.com/JerrySBG/SBG/main/slowdns/server.key"
#wget -q -O /etc/slowdns/server.pub "https://raw.githubusercontent.com/JerrySBG/SBG/main/slowdns/server.pub"
#wget -q -O /etc/slowdns/dnstt-server "https://raw.githubusercontent.com/JerrySBG/SBG/main/slowdns/dnstt-server"
#wget -q -O /etc/slowdns/dnstt-client "https://raw.githubusercontent.com/JerrySBG/SBG/main/slowdns/dnstt-client"
#chmod +x /etc/slowdns/server.key
#chmod +x /etc/slowdns/server.pub
#chmod +x /etc/slowdns/dnstt-server
#chmod +x /etc/slowdns/dnstt-client
#cd
#cat > /etc/systemd/system/client.service << END
#[Unit]
#Description=Client SlowDNS By @Jerry_SBG
#Documentation=https://hidessh.com
#After=network.target nss-lookup.target

#[Service]
#Type=simple
#User=root
#CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
#AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
#NoNewPrivileges=true
#ExecStart=/etc/slowdns/dnstt-client -udp 8.8.8.8:53 --pubkey-file /etc/slowdns/server.pub $nameserver 127.0.0.1:2222
#Restart=on-failure

#[Install]
#WantedBy=multi-user.target
#END

#cd
#cat > /etc/systemd/system/server.service << END
#[Unit]
#Description=Server SlowDNS By @Jerry_SBG
#Documentation=https://hidessh.com
#After=network.target nss-lookup.target

#[Service]
#Type=simple
#User=root
#CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
#AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
#NoNewPrivileges=true
#ExecStart=/etc/slowdns/dnstt-server -udp :5300 -privkey-file /etc/slowdns/server.key $nameserver 127.0.0.1:110
#Restart=on-failure

#[Install]
#WantedBy=multi-user.target
#END

#cd
#chmod +x /etc/systemd/system/client.service
#chmod +x /etc/systemd/system/server.service
#pkill dnstt-server
#pkill dnstt-client
#clear
#echo "\033[0;31m Generando nueva clave"
#cd /etc/slowdns
#rm -rf server.key server.pub
#./dnstt-server -gen-key -privkey-file server.key -pubkey-file server.pub
#echo -e "\033[0;31m FINALIZANDO..."
#./startdns
#clear
#systemctl daemon-reload
#systemctl stop client
#systemctl stop server
#systemctl enable client
#systemctl enable server
#systemctl start client
#systemctl start server
#systemctl restart client
#systemctl restart server
#clear
#fi
#}
res8() {
#bash /root/SBG/install/udp-custom.sh && chmod +x udp-custom.sh && bash udp-custom.sh
bash /root/SBG/udp/udp-custom.sh
clear
}
res9() {
bash /root/SBG/udp/ziv2.sh
clear
}
res10() {
bash /root/SBG/udp/install.sh
clear
}
res11() {
bash /root/SBG/bin/limit.sh
clear
}
res12() {
bash /root/SBG/install/ins-trgo.sh
clear
}

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}  PROCESANDO A INSTALAR SSH & OVPN      ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res2'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}       PROCESANDO A INSTALAR XRAY       ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res3'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}     PROCESANDO A INSTALAR WEBSOCKET    ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res4'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}     PROCESANDO A INSTALAR BACKUP MENU  ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res5'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}         DESCARGANDO EXTRA MENU         ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res6'

#echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
#echo -e "${BIBlue}│ ${BGCOLOR}         DESCARGANDO SLOW DNS           ${NC}${BIBlue} │${NC}"
#echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
#fun_bar 'res7'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}         DESCARGANDO UDP CUSTOM         ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res8'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}         DESCARGANDO UDP ZIVPN          ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res9'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}         DESCARGANDO HYSTERIA           ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res10'

echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}    PROCESANDO A INSTALAR LIMIT XRAY    ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
fun_bar 'res11'

#echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
#echo -e "${BIBlue}│ ${BGCOLOR}    PROCESANDO A INSTALAR TROJAN-GO     ${NC}${BIBlue} │${NC}"
#echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
#fun_bar 'res12'
}
sleep 2
clear
function iinfo(){
domain=$(cat /etc/xray/domain)
TIMES="10"
# MODIFICACIÓN: Nuevos datos de Telegram
CHATID="8082561559"
KEY="8200055786:AAHFGtSvgyoyWDtg5-9cgzgrBZus11FWlx0"
URL="https://api.telegram.org/bot$KEY/sendMessage"
CITY=$(curl -s ipinfo.io/city)
echo $CITY > /etc/xray/city
PAIS=$(curl ifconfig.co/country)
echo $PAIS > /etc/xray/pais
ISP=$(curl -sS ifconfig.co/asn-org)
echo $ISP > /etc/xray/isp
#sDNS=$(cat /etc/xray/dns)
#<code>𝙎𝙡𝙤𝙬𝘿𝙉𝙎  : </code><code>${sDNS}</code>
author=$(cat /etc/profil)
ressel=$(cat /usr/bin/profil2)
key=$(cat /usr/bin/kelly)
usertg=$(cat /usr/bin/tg)
idtg=$(cat /usr/bin/idtg)
TIME=$(date +'%d-%m-%Y %I:%M')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
MYIP=$(curl -sS ipv4.icanhazip.com)
d1=$(date -d "$IZIN" +%s)
d2=$(date -d "$today" +%s)
EXP=$(( (d1 - d2) / 86400 ))
TEXT="
<code>◇━━━━━━━━━━━━━━━━━━━━━━━━━━◇</code>
💻🆂🅲🆁🅸🅿🆃 🅹🅴🆁🆁🆈|🆂🅱🅶 💻
<code>◇━━━━━━━━━━━━━━━━━━━━━━━━━━◇</code>
<code>𝘾𝙍𝙀𝘼𝘿𝙊   : </code><code>${TIME} HORA</code>
<code>𝘿𝙤𝙢𝙞𝙣𝙞𝙤   : </code><code>${domain}</code>
<code>𝙄𝙋 𝙑𝙋𝙎    : </code><code>${MYIP}</code>
<code>𝙐𝘽𝙄𝘾𝘼𝘾𝙄𝙊𝙉: </code><code>$CITY, $PAIS</code>
<code>𝙊𝙎 𝙑𝙋𝙎   : </code><code>${MODEL2}</code>
<code>𝙍𝙖𝙢      : </code><code>${RAMMS} MB</code>
<code>🆔 𝙂𝙀𝙉 𝙏𝙂   :</code> <code>$idtg</code>
<code>𝙐𝙎𝙐𝘼𝙍𝙄𝙊 𝙏𝙂  :</code> <code>$usertg</code>
<code>🛡️𝙐𝙎𝙐𝘼𝙍𝙄𝙊🛡️ :</code> <code>$author</code>
<code>🛡️𝙍𝙀𝙎𝙀𝙇𝙇𝙀𝙍🛡️ :</code> <code>$ressel</code>
    <code>🗝️ 🅺🅴🆈 🆂🅲🆁🅸🅿🆃 ᵁᴰᴾˢ🗝️</code> 
<code>$key</code>
<code>◇━━━━━━━━━━━━━━━━━━━━━━━━━━◇</code>
<i> ᴀᴜᴛᴏꜱᴄʀɪᴘᴛ ɪɴꜱᴛᴀʟᴀᴅᴏ ᴄᴏʀʀᴇᴄᴛᴀᴍᴇɴᴛᴇ...</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥 𝙒𝙝𝙖𝙩𝙨𝙖𝙥𝙥 𝙊𝙛𝙞𝙘𝙞𝙖𝙡 🔥","url":"https://wa.me/+529241293310"},{"text":"🔥 𝙏𝙚𝙡𝙚𝙜𝙧𝙖𝙢 𝙊𝙛𝙞𝙘𝙞𝙖𝙡 🔥","url":"https://t.me/Jerry_SBG"}]]}'
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
}
SBGINSTALL
SBGINSTALL3
clear
cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
menu
END
clear
rm -rf /root/sbg.sh >/dev/null 2>&1
rm -rf /root/sbg2.sh >/dev/null 2>&1
rm -rf /root/slhost.sh >/dev/null 2>&1
rm -rf /root/ssh-vpn.sh >/dev/null 2>&1
rm -rf /root/ins-xray.sh >/dev/null 2>&1
rm -rf /root/ins-trgo.sh >/dev/null 2>&1
rm -rf /root/insshws.sh >/dev/null 2>&1
rm -rf /root/set-br.sh >/dev/null 2>&1
rm -rf /root/limit.sh >/dev/null 2>&1
rm -rf /root/tools.sh >/dev/null 2>&1
rm -rf /root/update.sh >/dev/null 2>&1
rm -rf /root/installsl.sh >/dev/null 2>&1
rm -rf /root/slowdns.sh >/dev/null 2>&1
rm -rf /root/udp-custom.sh >/dev/null 2>&1
rm -rf /root/lolcat-master >/dev/null 2>&1
rm -rf /root/SBG >/dev/null 2>&1
wget -q -o /dev/null http://${JS}:8585/versiVIP --http-user=JerrySBG --http-password=BySBG
mv versiVIP /opt/.ver
iinfo
timedatectl set-timezone America/Mexico_City
clear
echo -e "${BIBlue}╭════════════════════════════════════════════╮${NC}"
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - SlowDNS           : Todos los Puertos" | tee -a log-install.txt
echo "   - OpenSSH           : 22"  | tee -a log-install.txt
echo "   - SSH Websocket     : 80,8080,8088,8280,8880,2052,2082,2086,2095" | tee -a log-install.txt
echo "   - SSH SSL Websocket : 443, 8443" | tee -a log-install.txt
echo "   - Stunnel4          : 443" | tee -a log-install.txt
echo "   - Dropbear          : 109, 110, 143" | tee -a log-install.txt
echo "   - Badvpn            : 7100-7300" | tee -a log-install.txt
echo "   - Nginx             : 81" | tee -a log-install.txt
echo "   - Vmess TLS         : 443, 8443" | tee -a log-install.txt
echo "   - Vmess None TLS    : 80,8080,8088,8280,8880,2052,2082,2086,2095" | tee -a log-install.txt
echo "   - Vless TLS         : 443, 8443" | tee -a log-install.txt
echo "   - Vless None TLS    : 80,8080,8088,8280,8880,2052,2082,2086,2095" | tee -a log-install.txt
echo "   - Trojan GRPC       : 443, 8443" | tee -a log-install.txt
echo "   - Trojan WS         : 443, 8443" | tee -a log-install.txt
echo "   - Trojan Go         : 443, 8443" | tee -a log-install.txt
echo "   - UDP Custom        : 1-65535" | tee -a log-install.txt
echo "   >>> INSTALACION UDP MULTIPLEX PUERTOS COMPARTIDOS"  | tee -a log-install.txt
echo "   - UDP ZIVPN         : 1-19999" | tee -a log-install.txt
echo "   - UDP Hysteria      : 20000-39999" | tee -a log-install.txt
echo "   - UDP Custom        : 40000-65535" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Informacion del Servidor & Otras Configuraciones"  | tee -a log-install.txt
echo "   - Zona Horaria      : Mexico (UTC -6)"  | tee -a log-install.txt
echo "   - Fail2Ban          : [ON]"  | tee -a log-install.txt
echo "   - IPtables          : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reinicio     : [ON]"  | tee -a log-install.txt
echo "   - IPv6              : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On     : 12:00 $gg UTC -6" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Borrado Cuentas Expiradas (18:00 Hora MEXICO)" | tee -a log-install.txt
echo "   - Auto Backup de VPS (11:59 PM)" | tee -a log-install.txt
echo "   - VPS OPTMIZADO" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
#echo "   - Change port" | tee -a log-install.txt
echo "   - Elaborado por: JerrySBG"  | tee -a log-install.txt
echo "   - Whatsapp: +529241293310" | tee -a log-install.txt
echo "   - Telegram: @Jerry_SBG" | tee -a log-install.txt
echo ""
echo -e "${BIBlue}╰════════════════════════════════════════════╯${NC}"
echo ""
secs_to_human "$(($(date +%s) - ${start}))"
echo ""
sleep 1
echo 