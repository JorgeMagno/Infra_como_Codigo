#!/bin/bash

echo -e "\n$(tput setaf 0)$(tput setab 3)Verificando root...$(tput sgr 0)\n"

username=$(id -un)

if [ $username = 'root' ]; then

    echo -e " \n$(tput setaf 7)$(tput setab 2)Usuário root confirmado.$(tput sgr 0)\n"
    
    
    echo -e " \n$(tput setaf 7)$(tput setab 2)Finalizado!$(tput sgr 0)\n"
    
else

    echo -e "\n$(tput setaf 7)$(tput setab 1)Não é root, código não pode ser executado.\nSe torne usuário root e tente novamente.$(tput sgr 0)\n"
    
fi

exit 0
