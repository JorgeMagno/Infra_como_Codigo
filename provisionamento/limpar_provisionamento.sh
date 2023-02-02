#!/bin/bash

colunas=$(tput cols)
texto='Verificando root...'
printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 0)$(tput setab 3)$texto$(tput sgr 0)" 
#echo -e "\n$(tput setaf 0)$(tput setab 3)Verificando root...$(tput sgr 0)\n"

username=$(id -un)

if [ $username = 'root' ]; then

    texto='Usuário root confirmado.'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 7)$(tput setab 2)$texto$(tput sgr 0)" 
    #echo -e " \n$(tput setaf 7)$(tput setab 2)Usuário root confirmado.$(tput sgr 0)\n"
    
    texto='Removendo diretórios...'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 0)$(tput setab 3)$texto$(tput sgr 0)" 
    #echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo diretórios...$(tput sgr 0)\n"
    rm -rf /publico
    rm -rf /adm
    rm -rf /ven
    rm -rf /sec
    
    texto='Removendo grupos...'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 0)$(tput setab 3)$texto$(tput sgr 0)" 
    #echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo grupos...$(tput sgr 0)\n"
    groupdel GRP_ADM
    groupdel GRP_VEN
    groupdel GRP_SEC
    
    texto='Removendo usuários...'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 0)$(tput setab 3)$texto$(tput sgr 0)" 
    #echo -e "\n$(tput setaf 0)$(tput setab 3)Removendo usuários...$(tput sgr 0)\n"
    userdel -r carlos 
    userdel -r maria 
    userdel -r joao 
    userdel -r debora 
    userdel -r sebastiana 
    userdel -r roberto 
    userdel -r josefina 
    userdel -r amanda
    userdel -r rogerio
    
    texto='Finalizado!'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 7)$(tput setab 2)$texto$(tput sgr 0)" 
    #echo -e " \n$(tput setaf 7)$(tput setab 2)Finalizado!$(tput sgr 0)\n"
    
else

    texto='Não é root, código não pode ser executado.Se torne usuário root e tente novamente.'
    printf "%*s\n" $(((${#texto} + $colunas) / 2)) "$(tput setaf 7)$(tput setab 1)$texto$(tput sgr 0)"  
    #echo -e "\n$(tput setaf 7)$(tput setab 1)Não é root, código não pode ser executado.\nSe torne usuário root e tente novamente.$(tput sgr 0)\n"
    
fi

exit 0
