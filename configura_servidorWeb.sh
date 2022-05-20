#!/bin/bash
 
# Atualizando os pacotes
apt-get -y update
apt-get -y upgrade
 
# Instalando o apache2
apt-get install -y apache2
  
# Instalando o pacote de software wget
apt-get install -y wget
  
# Baixando o arquivo
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

# Instalando os pacotes de software zip e unzip
apt-get install -y zip
apt-get install -y unzip

# Descompactando o arquivo
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip
cd 873219-690e1f604dc8ead2583589e1aee6f8a42040a035
 
# Copiando para os arquivos para o diretório /var/www/html
cp cv-resumido.html /var/www/html/
cp style.css /var/www/html/ 
 
cd /var/www/html/

# Apagando o arquivo index.html
rm index.html
 
# Renomeando arquivo 
mv cv-resumido.html index.html

# Iniciando o servidor web Apache"
/etc/init.d/apache2 start
