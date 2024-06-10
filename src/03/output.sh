function output()
{
    echo -e "${BG1}${F1} HOSTNAME${NORMAL} = ${BG2}${F2}$HOSTNAME${NORMAL}"
    echo -e "${BG1}${F1} TIMEZONE${NORMAL} = ${BG2}${F2}$(< /etc/timezone)${NORMAL}"
    echo -e "${BG1}${F1} USER${NORMAL} = ${BG2}${F2}$USER${NORMAL}"
    echo -e "${BG1}${F1} OS${NORMAL} = ${BG2}${F2}$(uname) $(< /etc/issue.net)${NORMAL}"
    echo -e "${BG1}${F1} DATE${NORMAL} = ${BG2}${F2}$(date +"%d %B %Y %T")${NORMAL}"
    echo -e "${BG1}${F1} UPTIME${NORMAL} = ${BG2}${F2}$(uptime -p)${NORMAL}"
    echo -e "${BG1}${F1} UPTIME_SEC${NORMAL} = ${BG2}${F2}$(cat /proc/uptime | awk '{print $1}')${NORMAL}"
    echo -e "${BG1}${F1} IP${NORMAL} = ${BG2}${F2}$(hostname -i | awk '{print $1}')${NORMAL}"
    echo -e "${BG1}${F1} MASK${NORMAL} = ${BG2}${F2}$( ifconfig | grep -m2 'inet '| awk '{ if (NR==2) print $4}' )${NORMAL}"
    echo -e "${BG1}${F1} GATEWAY${NORMAL} = ${BG2}${F2}$(ip r | awk '/default/{print$3}')${NORMAL}"
    echo -e "${BG1}${F1} RAM_TOTAL${NORMAL} = ${BG2}${F2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$1 / 1024) }' ) Gb${NORMAL}"
    echo -e "${BG1}${F1} RAM_USED${NORMAL} = ${BG2}${F2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$2 / 1024) }' ) Gb${NORMAL}"
    echo -e "${BG1}${F1} RAM_FREE${NORMAL} = ${BG2}${F2}$( free -m | awk 'sub(/Mem:/,""){printf("%.3f\n",$3 / 1024) }' ) Gb${NORMAL}"
    echo -e "${BG1}${F1} SPACE_ROOT${NORMAL} = ${BG2}${F2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$2 / 1024) }' ) Mb${NORMAL}"
    echo -e "${BG1}${F1} SPACE_ROOT_USED${NORMAL} = ${BG2}${F2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$3 / 1024) }' ) Mb${NORMAL}"
    echo -e "${BG1}${F1} SPACE_ROOT_FREE${NORMAL} = ${BG2}${F2}$( df -hk / | awk 'sub(/dev/,""){printf("%.2f\n",$4 / 1024) }' ) Mb${NORMAL}"
}
