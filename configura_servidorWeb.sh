#!/bin/bash
 
echo "Iniciando a Prova de Conceito"
echo "Passo 01: atualizar os pacotes"
 
# Atualizando os pacotes
apt-get -y update
 
echo "Passo 01 finalizado!"
 
echo "------------------------------"
 
echo
 
echo "Passo 02: instalar o servidor Apache"
 
# Instalando o apache2
apt-get install -y apache2
 
echo "Passo 02: finalizado!"
 
echo "-----------------------------"
 
echo
 
echo "Passo 03: instalar o pacote de software wget"
 
# Instalando o pacote de software wget
apt-get install -y wget
 
echo "Passo 03: finalizado!"
 
echo "-----------------------------"
 
echo
 
echo "Passo 04: fazer o download do arquivo para o servidor"
 
# Baixando o arquivo
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip
 
echo "Passo 04: finalizado!"
 
echo "----------------------------"
 
echo
 
echo "Passo 05: descompactar o arquivo zip e copiar para dentro do diretório /var/www/html/ os arquivos (que estão dentro do zip) cv-resumido.html e style.css."
 
apt-get install -y zip
apt-get install -y unzip
 
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip -d /var/www/html/
 
 
echo "Passo 05: finalizado!"
 
echo "---------------------------"
 
echo
 
echo "Passo 06: apagar o arquivo index.html que existe dentro do diretório /var/www/html/ e renomear o arquivo cs-resumido.html para index.html"
 
rm /var/www/html/index.html
echo "Arquivo index.html apagado"
 
mv /var/www/html/cs-resumido.html /var/www/html/index.html
echo "Arquivo cs-resumido.html renomeado para index.html"
 
echo "Passo 06: finalizado!"
 
echo "---------------------------"
 
echo
 
echo "Passo 07: inicar o servidor web Apache"
/etc/init.d/apache2 start
 
