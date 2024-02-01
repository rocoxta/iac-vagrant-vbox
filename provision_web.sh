#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala o servidor SSH
sudo apt-get install -y openssh-server

# Instala o servidor web Apache
sudo apt-get install -y apache2

# Copia os arquivos do diretório html para o diretório de exibição do servidor web
sudo cp -r /files/html/* /var/www/html/

# Cria o diretório .ssh para o usuário vagrant
mkdir -p /home/vagrant/.ssh

# Adiciona a chave pública diretamente ao arquivo authorized_keys
echo "$(cat /files/ssh-key.pub)" >> /home/vagrant/.ssh/authorized_keys

# Ajusta as permissões
sudo chown -R vagrant:vagrant /home/vagrant/.ssh

# Reinicia o serviço SSH
sudo service ssh restart

# Reinicia o servidor web Apache
sudo service apache2 restart
