#!/bin/bash

red='\x1b[31;1m'
yellow='\x1b[33;1m'
green='\x1b[32;1m'
plain='\033[0m'

# $1: username, $2: password, $3: message, $4: token

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

#if [[ -n $4 ]] && [[ $(($(date +%s) - $4)) -lt 120 ]] && [[ $(($(date +%s) - $4)) -ge 0 ]]; then

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_ready/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "--- ۩ SERVER BY 404 ۩ ---" | tee /etc/ssh/gcp_ready >/dev/null
useradd "nkka404" --shell=/bin/false -M
echo "nkka404:nkka404" | chpasswd

#else
#  echo -e "${red}Token is invalid or expired. Contact the developer https://t.me/kaungkhantx for more information.${plain}"
#fi

echo ""
echo "------------------------------------"
printf "  Proudly developed the script by  \n"
echo "------------------------------------"
echo ""

echo -e "${GREEN} --------------------------------------------------------------------- ${PLAIN}"
echo -e "${GREEN}       / |            ————————————            / |                    ❣️${PLAIN}"
echo -e "${GREEN}      /  |           |            |          /  |                   ❣️ ${PLAIN}"
echo -e "${GREEN}     /   |           |            |         /   |                  g   ${PLAIN}"
echo -e "${GREEN}    /    |           |            |        /    |                 t    ${PLAIN}"
echo -e "${GREEN}   /     |           |            |       /     |                t     ${PLAIN}"
echo -e "${GREEN}  / ____ |___        |            |      / ———— |————           m      ${PLAIN}"
echo -e "${GREEN}         |           |            |             |              P       ${PLAIN}"
echo -e "${GREEN}         |            ————————————              |         t.me/        ${PLAIN}"
echo -e "${GREEN} --------------------------------------------------------------------- ${PLAIN}"