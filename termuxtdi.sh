#!/bin/bash
#Script criado por Lyanna, na intenção de auxiliar os alunos do TDI.
#Se você é aluno(a) do TDI mande-me um "Obrigado Lyanna!" no Discord para saber que pude ajudar-lhe!
clear
echo -e "\e[1;92m Vamos começar atualizando o \e[1;93mTermux."
echo -e "\e[1;92m Isso pode demorar um pouquinho."
echo -e "\e[1;92m Recomendo tomar um cafézinho ou ler alguma coisa."


cd ~
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y


echo -e "\e[1;92m Finalizamos a primeira parte. Vamos para o restante!"
echo -e "\e[1;92m Instalando o OpenSSH e o OpenSSL"


pkg install openssh openssl -y


echo -e "\e[1;92m O OpenSSH e o OpenSSL são dependências necessárias para que as aplicações estabeleçam conexões seguras (criptografadas) entre o cliente (você) e o servidor"
echo -e "\e[1;92m Instalando o curl e o wget."


apt install curl wget -y


echo -e "\e[1;92m Instalando o  ncurses-utils"


apt install ncurses-utils


echo -e "\e[1;92m Instalando o net-tools."


pkg install net-tools


echo -e "\e[1;92m Instalando algumas linguagens de programação. Isso vai demorar bastante. Tome outro cafézinho..."


pkg install python python2 ruby golang -y


echo -e "\e[1;92m Instalando o lolcat."


gem install lolcat


echo -e "\e[1;92m Instalando o Nmap"


pkg install nmap


echo -e "\e[1;92m Instalando o  SQLMap"


git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap


cd ~


echo -e "\e[1;92m Para você usar o SQLMap é necessário estar no diretório sqlmap e executar o comando python3 sqlmap.py parâmetros (URL) "
echo -e "\e[1;92m Instalando o SEToolKit"
echo -e "\e[1;92m AVISO: O SETOOLKIT REQUER PERMISSÃO DE SUPERUSUÁRIO (root) PARA FUNCIONAR!!!"


cd ~ 
git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
cd setoolkit
pip3 install -r requirements.txt
cd ~


echo -e "\e[1;92m Utilizando de um script gigante para você não ter nenhum erro sequer!"
echo -e "\e[1;92m Isso será bem rápido!"


sed -i '13,15 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb


echo -e "\e[1;92m Instalando o Metasploit 6"


source <(curl -fsSL https://raw.githubusercontent.com/efxtv/Metasploit-in-termux/main/metasploit-6-termux.sh) 
cd ~


echo -e "\e[1;92m É isso! Parabéns você instalou todas as coisas necessárias para começar seus testes de invasão. Bem vindo(a) ao mundo Hacking!!!"
