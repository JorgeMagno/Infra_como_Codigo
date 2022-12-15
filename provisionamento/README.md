# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

Scripts desenvolvidos a partir de um desafio de projeto na [DIO](https://www.dio.me/). 
O script ```provisionamento.sh``` cria uma estrutura de usuários e grupos definindo permissões para os seus respectivos diretórios. Além disso, há o script para limpar o provisionamento feito (```limpar_provisionamento.sh```), ou seja, remove a estrutura criada pelo outro.

## Estrutura

O script ```provisionamento.sh``` cria seguinte estrutura:
![Estrutura](estrutura.png)

## Definições

- **Muito importe antes de executar o código se tornar usuário root.**
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários têm permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.

## 🛠 Tecnologia
<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" /><img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />

## Uso

```
./provisionamento.sh
./limpar_provisionamento.sh
```

## Author
Jorge Magno

### Contato:
[<img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" />](https://www.linkedin.com/in/jorge-magno-l-moraes-381a19174/) 
[<img src = "https://img.shields.io/badge/instagram-%23E4405F.svg?&style=for-the-badge&logo=instagram&logoColor=white">](https://www.instagram.com/jorgepierrot/?hl=pt-br) 
[<img src = "https://img.shields.io/badge/facebook-%231877F2.svg?&style=for-the-badge&logo=facebook&logoColor=white">](https://www.facebook.com/jorge.magno.7)
