#!/bin/bash

echo -e "\n$(tput setaf 0)$(tput setab 3)Verificando root...$(tput sgr 0)\n"

username=$(id -un)

if [ $username = 'root' ]; then

    echo -e " \n$(tput setaf 7)$(tput setab 2)Usuário root confirmado.$(tput sgr 0)\n"
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Criando diretórios...$(tput sgr 0)\n"
    mkdir /publico
    mkdir /adm
    mkdir /ven
    mkdir /sec
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Criando grupos...$(tput sgr 0)\n"
    groupadd GRP_ADM
    groupadd GRP_VEN
    groupadd GRP_SEC
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Criando usuários...$(tput sgr 0)\n"
    useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123456)
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Adicionando usuários aos grupos...$(tput sgr 0)\n"
    usermod -G GRP_ADM carlos
    usermod -G GRP_ADM maria
    usermod -G GRP_ADM joao
    usermod -G GRP_VEN debora
    usermod -G GRP_VEN sebastiana
    usermod -G GRP_VEN roberto
    usermod -G GRP_SEC josefina
    usermod -G GRP_SEC amanda
    usermod -G GRP_SEC rogerio
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Alterando permissões...$(tput sgr 0)\n"
    chown root:GRP_ADM /adm/
    chown root:GRP_VEN /ven/
    chown root:GRP_SEC /sec/
    
    chmod 777 /publico/
    chmod 770 /adm/
    chmod 770 /ven/
    chmod 770 /sec/
    
    echo -e " \n$(tput setaf 7)$(tput setab 2)Finalizado!$(tput sgr 0)\n"
    
else

    echo -e "\n$(tput setaf 7)$(tput setab 1)Não é root, código não pode ser executado.\nSe torne usuário root e tente novamente.$(tput sgr 0)\n"
    
fi

exit 0
