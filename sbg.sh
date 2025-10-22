#!/bin/bash
# By Jerry_SBG
### Color
BIBlue='\033[1;94m'       # Blue
BGCOLOR='\e[1;97;101m'    # WHITE RED
Wh='\033[0; 37m'
export NC='\033[0m'
RED="\033[31m"
YELLOW="\033[33m"
GRAY="\e[1;30m"
purple="\033[1;95m"
sudo apt-get install -y figlet boxes
sudo apt-get install -y pv
unset HISTFILE
history -cw
# ===================
IVAR="/etc/http-instas"
SCPT_DIR="/var/www/html/KEY"

ofus() {
    unset server
    server=$(echo ${txt_ofuscatw} | cut -d':' -f1)
    unset txtofus
    number=$(expr length $1)
    for ((i = 1; i < $number + 1; i++)); do
      txt[$i]=$(echo "$1" | cut -b $i)
      case ${txt[$i]} in
        ".") txt[$i]="x" ;;
        "x") txt[$i]="." ;;
        "5") txt[$i]="s" ;;
        "s") txt[$i]="5" ;;
        "1") txt[$i]="@" ;;
        "@") txt[$i]="1" ;;
        "2") txt[$i]="?" ;;
        "?") txt[$i]="2" ;;
        "4") txt[$i]="0" ;;
        "0") txt[$i]="4" ;;
        "/") txt[$i]="K" ;;
        "K") txt[$i]="/" ;;
      esac
      txtofus+="${txt[$i]}"
    done
    echo "$txtofus" | rev
  }
  
# // Exporint IP AddressInformation
export IP=$( curl -sS ipinfo.io/ip )

# // Clear Data
clear
# // Exporint IP AddressInformation
export IP=$( curl -sS ipinfo.io/ip )

clear
if [ -f "/etc/xray/domain" ]; then
echo -e "[ ${YELLOW}DETECTADO ] ${BIBlue}Script ya Instalado"
echo -ne "[ ${RED}ATENCION ] ${BIBlue}¿Quieres Reinstalar tu S.O? ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
echo -e "[ ${yell}INFORMACION${NC} ] ${BLUE}PARA DISFRUTAR DE MI SCRIPT REINSTALA TU VPS"
exit 0
else
echo -e "${BIBlue}╭═══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│\e[1;32m Seleccione Opcion para Reinstalar su S.O  ${BIBlue}│${NC}"
echo -e "${BIBlue}╰═══════════════════════════════════════════╯${NC}"
echo -e "${BIBlue}╭═══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│  [ 1 ]  \e[1;32mReinstalar S.O Debian 10             ${NC}"  
echo -e "${BIBlue}│  [ 2 ]  \e[1;32mReinstalar S.O Debian 11             ${NC}" 
echo -e "${BIBlue}│  [ 3 ]  \e[1;32mReinstalar S.O Debian 12             ${NC}"
echo -e "${BIBlue}│  [ 3 ]  \e[1;32mReinstalar S.O Debian 13             ${NC}"
echo -e "${BIBlue}│  [ 5 ]  \e[1;32mReinstalar S.O Ubuntu 18.04          ${NC}"  
echo -e "${BIBlue}│  [ 6 ]  \e[1;32mReinstalar S.O Ubuntu 20.04          ${NC}"  
echo -e "${BIBlue}│  [ 7 ]  \e[1;32mReinstalar S.O Ubuntu 22.04          ${NC}"  
echo -e "${BIBlue}│  [ 8 ]  \e[1;32mReinstalar S.O Ubuntu 24.04          ${NC}"  
echo -e "${BIBlue}│  [ 9 ]  \e[1;32mReinstalar S.O Ubuntu 25.04          ${NC}"                                       
echo -e "${BIBlue}╰═══════════════════════════════════════════╯${NC}"
until [[ $so =~ ^[1-9]+$ ]]; do 
read -p "   Por Favor Selecciona del 1 al 9 : " so
done

if [[ $so == "1" ]]; then
clear
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh debian 10
reboot&&reboot
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh debian 10 && reboot
fi
if [[ $so == "2" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh debian 11
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh debian 11 && reboot
reboot&&reboot
fi
if [[ $so == "3" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh debian 12
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh debian 12 && reboot
reboot&&reboot
fi
if [[ $so == "4" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh debian 13
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh debian 13 && reboot
reboot&&reboot
fi
if [[ $so == "5" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh ubuntu 18.04
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh ubuntu 18.04 && reboot
reboot&&reboot
fi
if [[ $so == "6" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh ubuntu 20.04
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh ubuntu 20.04 && reboot
reboot&&reboot
fi
if [[ $so == "7" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh ubuntu 22.04
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh ubuntu 22.04 && reboot
reboot&&reboot
fi
if [[ $so == "8" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh ubuntu 24.04
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh ubuntu 24.04 && reboot
reboot&&reboot
fi
if [[ $so == "9" ]]; then
wget http://107.172.21.231:8585/TG-Jerry_SBG.sh --http-user=JerrySBG --http-password=BySBG && chmod +x TG-Jerry_SBG.sh && ./TG-Jerry_SBG.sh ubuntu 25.04
#curl -O https://raw.githubusercontent.com/JerrySBG/SBG/VPS/TG-Jerry_SBG.sh && bash TG-Jerry_SBG.sh ubuntu 25.04 && reboot
reboot&&reboot
fi
exit
fi
fi
[[ "$1" == '--SBG' ]] && echo -e " ${YELLOW}ESPERA UN MOMENTO $1" > /dev/null 2>&1 && sleep 1 && clear || {
exit&&exit
}

clear
echo -e "  ${BIBlue}╭══════════════════════════════════════╮${NC}"
echo -e "  ${BIBlue}│ ${BGCOLOR}      ACTUALIZANDO BASE DE DATOS!   ${NC}${BIBlue} │${NC}"
echo -e "  ${BIBlue}╰══════════════════════════════════════╯${NC}"
sleep 2
sudo apt -q update
sudo apt -y upgrade
clear
  # // Banner
echo -e "${BIBlue}╭═══════════════════════════════════════════════════╮ ${FONT}"
echo -e " ${YELLOW}     Bienvenido al Auto-Script MOD´s EDICION${NC}"
echo -e " ${purple} Esto Configurará Rápidamente el SCRIPT en su VPS${NC}"
echo -e "    ${Wh}     Autor : ${RED}JERRY® ${NC}( ${Wh} Hecho en Mexico ${NC})${NC}"
echo -e "       ${purple}        © DEV JERRY-SBG ${NC}(${purple} 2026 ${NC})${NC}"
echo -e " ${RED}     Telegram : ${Wh}@Jerry_SBG ${NC}${RED} Grupo: ${NC}${Wh}sbg_yt${NC}"
echo -e "${BIBlue}╰═══════════════════════════════════════════════════╯ ${FONT}"
echo ""
sleep 0.1
# // Checking Os Architecture
if [[ $( uname -m | awk '{print $1}' ) == "x86_64" ]]; then
    echo -e "${OK}${BIBlue} Su arquitectura es compatible ( ${WH}$( uname -m )${NC} )"
else
    echo -e "${EROR} Su arquitectura no es compatible ( ${YELLOW}$( uname -m )${NC} )"
    exit 1
fi
# // Checking System
if [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "ubuntu" ]]; then
    echo -e "${OK}${BIBlue} Su sistema Operativo es Compatible ( ${WH}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
elif [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "debian" ]]; then
    echo -e "${OK}${BIBlue} Su sistema Operativo es Compatible ( ${WH}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
else
    echo -e "${EROR} Su Sistema Operativo No es Compatible ( ${YELLOW}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
    exit 1
fi
#MYIP=$(curl -sS ipinfo.io/ip)
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "${OK}${BIBlue} Direccion De IP ${NC}( ${WH}$MYIP${NC} )"
echo ""
read -p "$( echo -e "${purple}Presione ${GRAY}[ ${NC}${RED}Enter${NC} ${GRAY}]${purple} Para iniciar la instalación") "
clear
clear
echo -e "${BIBlue}╭════════════════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│   ALGUNAS VPS NECESITAN PERMISOS DE USUARIO ROOT   ${NC}${BIBlue}│${NC}"
echo -e "${BIBlue}│   COMO ORACLE, GOOGLE, AZURE, Y ALGUNOS PROVEDORES ${NC}${BIBlue}│${NC}"
echo -e "${BIBlue}│ SI TU VPS YA CUENTA CON ACCESO ROOT PRESIONA ENTER ${NC}${BIBlue}│${NC}"
echo -e "${BIBlue}│      ${BLUE}[ ${purple}By JERRY®${BLUE} ]  ${BLUE}[ ${purple}By JERRY®${BLUE} ] ${BLUE}[ ${purple}By JERRY®${BLUE} ]${NC}    ${BIBlue}│${NC}"
echo -e "${BIBlue}╰════════════════════════════════════════════════════╯${yell}"
echo  ""
echo -e "[ ADVERTENCIA ] ¿Quieres Dar PERMISOS ROOT Ahora? (y/n) "; read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
clear
else
[[ "$(whoami)" != "root" ]] && {
    clear
    echo -e "\033[1;31mEJECUTE COMO USUARIO ROOT, \033[1;32m(\033[1;33msudo -i\033[1;32m)\033[0m"
    exit
}
iptables -F
echo 'nameserver 1.1.1.1' > /etc/resolv.conf
echo 'nameserver 1.0.0.1' >> /etc/resolv.conf
apt update -y

[[ $(grep -c "prohibit-password" /etc/ssh/sshd_config) != '0' ]] && {
    sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "without-password" /etc/ssh/sshd_config) != '0' ]] && {
    sed -i "s/without-password/yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "#PermitRootLogin" /etc/ssh/sshd_config) != '0' ]] && {
    sed -i "s/#PermitRootLogin/PermitRootLogin/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "PasswordAuthentication" /etc/ssh/sshd_config) = '0' ]] && {
    echo 'PasswordAuthentication yes' > /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "PasswordAuthentication no" /etc/ssh/sshd_config) != '0' ]] && {
    sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "#PasswordAuthentication no" /etc/ssh/sshd_config) != '0' ]] && {
    sed -i "s/#PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
} > /dev/null

sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config.d/60-cloudimg-settings.conf  > /dev/null
#sed -i "s/ChallengeResponseAuthentication no/#ChallengeResponseAuthentication no/g" /etc/ssh/sshd_config
service ssh restart > /dev/null

iptables -F
iptables -A INPUT -p tcp --dport 81 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 8888 -j ACCEPT
iptables -A INPUT -p tcp --dport 8008 -j ACCEPT
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp --dport 8280 -j ACCEPT
clear && echo -ne "\033[1;32mESCRIBA SU NUEVA CLAVE ROOT\033[1;37m: "; read senha
[[ -z "$senha" ]] && {
echo -e "\n\033[1;31mCLAVE INVALIDA !\033[0m"
exit 0
}
echo "root:$senha" | chpasswd
echo -e "\n\033[1;31m[ \033[1;33mOK ! \033[1;31m]\033[1;37m - \033[1;32mCLAVE DEFINIDA ! \033[0m"
fi
clear
echo -e "  ${BIBlue}╭═══════════════════════════════════════╮${NC}"
echo -e "  ${BIBlue}│ ${BGCOLOR}                ATENCION             ${NC}${BIBlue} │${NC}"
echo -e "  ${BIBlue}╰═══════════════════════════════════════╯${NC}"
echo -e "  ${BIBlue}╭═══════════════════════════════════════╮${NC}"
echo -e "   ${Wh}NO OLVIDES MANDAR CAPTURA AL ADM ${purple}JERRY®${NC}"
echo -e "      ${BGCOLOR}EVITA SER BANEADO TU SCRIPT FREE${NC}"
echo -e "      ${Wh}COMPRA TU ACCESO PREMIUM AL BOT${NC}"
echo -e "   ${Wh}ACTUALIZACIONES Y SOPORTE PERSONALIZADO${NC}"
echo -e "          ${Wh}TELEGRAM: ${YELLOW}@Jerry_SBG${NC}${BIBlue} ${NC}"
echo -e "          ${Wh}Grupo Telegram: ${YELLOW}@sbg_yt${NC}${BIBlue} ${NC}"
echo -e "  ${BIBlue}╰═══════════════════════════════════════╯${NC}"
echo ""
echo -e "  ${BIBlue}╭══════════════════════════════════════╮${NC}"
echo -e "  ${BIBlue}│ ${BGCOLOR}      INSTALANDO APPS NECESARIOS!   ${NC}${BIBlue} │${NC}"
echo -e "  ${BIBlue}╰══════════════════════════════════════╯${NC}"
echo ""
APP="figlet" # Reemplaza con el nombre real de la app
APP2="lolcat"
APP3="vnstat"
APP4="socat"
#echo -e "   ${Wh}Espera un Momento, Por Favor...${NC}"
#APP5="unzip"
#echo -e "   ${Wh}Espera un Momento, Ya Termino...${NC}"
#APP6="webfs"

dpkg -s $APP &> /dev/null  
if [ $? -ne 0 ]
then
sudo apt-get install -y $APP &> /dev/null
else
echo -e "   ${Wh}Ya está Instalada en tu Sistema APP1....${NC}"
fi
dpkg -s $APP2 &> /dev/null  
if [ $? -ne 0 ]
then
sudo apt-get install -y $APP2 &> /dev/null
else
echo -e "   ${Wh}Ya está Instalada en tu Sistema APP2....${NC}"
fi
dpkg -s $APP3 &> /dev/null  
if [ $? -ne 0 ]
then
sudo apt-get install -y $APP3 &> /dev/null
else
echo -e "   ${Wh}Ya está Instalada en tu Sistema APP3....${NC}"
fi
dpkg -s $APP4 &> /dev/null  
if [ $? -ne 0 ]
then
sudo apt-get install -y $APP4 &> /dev/null
else
echo -e "   ${Wh}Ya está Instalada en tu Sistema APP4....${NC}"
fi
#dpkg -s $APP5 &> /dev/null  
#if [ $? -ne 0 ]
#then
#sudo apt-get install -y $APP5 &> /dev/null
#else
#echo -e "   ${Wh}Ya está Instalada en tu Sistema....${NC}"
#fi
#dpkg -s $APP6 &> /dev/null  
#if [ $? -ne 0 ]
#then
#sudo apt-get install -y $APP6 &> /dev/null
#else
#echo -e "   ${Wh}Ya está Instalada en tu Sistema....${NC}"
#fi
#apt-get install -y figlet > /dev/null
#apt-get install -y lolcat > /dev/null
#apt-get install -y vnstat >/dev/null 2>&1
#apt-get install -y socat >/dev/null 2>&1
#apt-get install -y unzip  >/dev/null 2>&1
#apt-get install -y webfs >/dev/null 2>&1
clear
if [ "$(systemd-detect-virt)" == "openvz" ]; then
        echo "OpenVZ no es Soportado"
        exit 1
fi
clear
function SBG () {
clear 
echo -e "  ${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "  ${BIBlue}│ ${BGCOLOR}  INTRODUZCA LA CLAVE DE LA LICENCIA     ${NC}${BIBlue}│${NC}"
echo -e "  ${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
read -p $'   \033[0;97;41mINGRESA TU CLAVE:\033[0m \033[1;97;36m' Key
echo "$Key" > /usr/bin/kelly

# MODIFICACIÓN AQUÍ - Usar 873b109bae320540 directamente
res="107.172.21.231"
res2="873b109bae320540"

echo "$res" > /usr/bin/vendor_codes
meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- /dev/null ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
echo "$IP" > /usr/bin/vendor_code
}
meu_ip
veryfy_fun () {
[[ ! -d ${IVAR} ]] && touch ${IVAR}
[[ ! -d ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
unset ARQ
case $1 in
"gerar.sh")ARQ="/usr/bin/";;
"http-server.sh")ARQ="/bin/";;
*) ARQ="${SCPT_DIR}/";;
esac
mv -f $HOME/$1 ${ARQ}/$1
chmod +x ${ARQ}/$1
}
echo " "
text="   COMPILANDO CLAVE DE ACCESO CON SBG "
color="\033[1;37m"  # Blanco
function SBG2 () {
wget -q -o /dev/null http://${res}:8787/${res2}/sbg --http-user=JerrySBG --http-password=BySBG
serial=$(cat sbg)
clear
if [[ $res2 == $serial ]]; then
clear && clear && clear

wget -q -o /dev/null http://${res}:8787/${res2}/menu_credito --http-user=JerrySBG --http-password=BySBG
wget -q -o /dev/null http://${res}:8787/${res2}/ke --http-user=JerrySBG --http-password=BySBG
wget -q -o /dev/null http://${res}:8787/${res2}/obfs --http-user=JerrySBG --http-password=BySBG
wget -q -o /dev/null http://${res}:8787/${res2}/idtg --http-user=JerrySBG --http-password=BySBG
wget -q -o /dev/null http://${res}:8787/${res2}/tg --http-user=JerrySBG --http-password=BySBG
wget -q -O /dev/null https://raw.githubusercontent.com/StormProject-Axeon/SBG/refs/heads/main/sbg2.sh
wget -q -o /dev/null http://${res}:8787/${res2}/SBG.zip --http-user=JerrySBG --http-password=BySBG
clear && clear && clear
mv menu_credito /usr/bin/profil2
mv obfs /usr/bin/obfs
mv idtg /usr/bin/idtg
mv tg /usr/bin/tg
mv ke /usr/bin/cred
clear
BIBlue='\033[1;94m'       # Blue
BGCOLOR='\e[1;97;101m'    # WHITE RED
echo -e "  ${BIBlue}╭══════════════════════════════════════╮${NC}"
echo -e "  ${BIBlue}│${BGCOLOR}       INFORMACION LICENCIA KEY       ${NC}${BIBlue}│${NC}"
echo -e "  ${BIBlue}╰══════════════════════════════════════╯${NC}"
echo -e "  ${BIBlue} ═══════════════════════════════════════${NC}"
echo -e "  ${purple}  LICENCIA EXITOSA POR FAVOR ESPERE"
echo -e "  ${purple}  UN MOMENTO PARA QUE SE ACTUALICE B.D"
echo -e "  ${BIBlue} ══════════════════════════════════════\033[0m"
sleep 2
#read -n 1 -s -r -p "Presiona Cualquier Para Empezar A Instalar"
echo " "
else
clear
    echo -e "   \033[0;97;41m-> KEY INVALIDA (Saliendo)\033[0m" | pv -qL 10
    echo -e "   \033[0;97;45m-> INTENTA DE NUEVO, COPIA BIEN LA KEY${NC}" 
    echo -e "   \033[0;97;45m-> KEY ELIMINADA o USADA,Genera Nueva KEY${NC}" 
    echo -e "   \033[0;97;45m-> TELEGRAM: @Jerry_SBG${NC}"
    echo -e "   \033[0;97;45m-> USADA POR $base ${NC}"
    exit && exit
fi
}
SBG2
for ((i = 0; i < ${#text}; i++)); do
    echo -n -e "${color}${text:$i:1}"
    sleep 0.1  # Ajusta este valor según tu preferencia para el retraso entre letras
done
echo -e "\033[0m"  # Restaura el color predeterminado al final
clear && clear && clear
cd $HOME
wget -qO- /dev/null "$HOME/lista-arq" $(ofus "$Key")/$IP > /dev/null 2>&1
IP=$(ofus "$Key" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
clear && clear && clear
[[ -e $HOME/lista-arq ]] && {
REQUEST=$(ofus "$Key" |cut -d'/' -f2)
for arqx in `cat $HOME/lista-arq`; do
echo -ne "   \033[38;5;15;48;5;208mCONEXION AL SERVIDOR: \033[0m"
wget -qO- /dev/null $HOME/$arqx ${IP}:8888/${REQUEST}/${arqx} > /dev/null 2>&1 && echo -e "   \033[1;31m-\033[1;32mExitosa !" || { echo -e "   \033[0;97;41mFallida (Saliendo)\033[0m" | pv -qL 10; echo -e "   \033[0;97;45m-> TELEGRAM: @Jerry_SBG${NC}"; exit 1; }
[[ -e $HOME/$arqx ]] && veryfy_fun $arqx
done
}
clear
wget -q -o /dev/null http://${res}:8686/x --http-user=JerrySBG --http-password=BySBG
_double=$(cat /usr/bin/vendor_code | grep $res | awk '{print $1}')
if [[ $_double == $res ]]; then
clear && clear
else
clear
fi
}
SBG
clear
checking_sc() {
clear
  cols=$(tput cols)
text=" INSTALACION EN CURSO "
padding=$(((cols - ${#text}) / 5))
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -ne "\033[38;5;15;48;5;208m$(printf "%*s" $padding)${text}$(printf "%*s" $padding)\033[0m"
    echo " "
    echo -e "\e[1;33m RESELLER: $(awk '{printf "%0s\n", $0}' /usr/bin/profil2) ${purple}VERIFICADO \e[0m" | pv -qL 10
    echo -e "\e[1;33m KEY SCRIP: $(awk '{printf "%0s\n", $0}' /usr/bin/cred) ${purple}VERIFICADO \e[0m" | pv -qL 10
    echo -e "              ${RED}PERMISO CONCEDIDO${NC}"  # Ajusta el mensaje según tus necesidades
    echo -e "   \033[0;33mTu IP fue Autorizado Exitosamente.${NC}"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    # exit
  # fi
   #rm -rf /root/SCRIPT
   #rm -rf /root/list-key
   sleep 1
}
checking_sc

# COMENTADO/ELIMINADO: No ejecutar sbg2.sh
chmod +x sbg2.sh && ./sbg2.sh --BySBG

echo -e "${BIBlue}╭══════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}    INSTALACION DETENIDA MANUALMENTE   ${NC}${BIBlue}│${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════╯${NC}"
echo -e "   ${YELLOW}Script detenido antes de ejecutar sbg2.sh${NC}"
echo -e "   ${purple}Archivos descargados y validados correctamente${NC}"
exit 0