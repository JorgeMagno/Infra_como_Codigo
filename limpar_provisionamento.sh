#!/bin/bash

echo -e "\n$(tput setaf 0)$(tput setab 3)Verificando root...$(tput sgr 0)\n"

username=$(id -un)

if [ $username = 'root' ]; then

    echo -e " \n$(tput setaf 7)$(tput setab 2)Usuário root confirmado.$(tput sgr 0)\n"
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo diretórios...$(tput sgr 0)\n"
    rm -rf /publico
    rm -rf /adm
    rm -rf /ven
    rm -rf /sec
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo grupos...$(tput sgr 0)\n"
    groupdel GRP_ADM
    groupdel GRP_VEN
    groupdel GRP_SEC
    
    echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo usuários...$(tput sgr 0)\n"
    userdel -r carlos 
    userdel -r maria 
    userdel -r joao 
    userdel -r debora 
    userdel -r sebastiana 
    userdel -r roberto 
    userdel -r josefina 
    userdel -r amanda
    userdel -r rogerio
    
    
    echo -e " \n$(tput setaf 7)$(tput setab 2)Finalizado!$(tput sgr 0)\n"
    
else

    echo -e "\n$(tput setaf 7)$(tput setab 1)Não é root, código não pode ser executado.\nSe torne usuário root e tente novamente.$(tput sgr 0)\n"
    
fi

exit 0
