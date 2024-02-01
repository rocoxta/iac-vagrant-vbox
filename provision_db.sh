#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala o servidor SSH
sudo apt-get install -y openssh-server

# Instalar o MySQL Server, e confirma todas as interativas (-y).
apt-get install -y mysql-server

# Cria um novo usuário no MySQL chamado 'rodrigocoal' com senha '123', 
mysql -e "create user 'rodrigocoal'@'%' identified by '123';"

# Cria o diretório .ssh para o usuário vagrant
mkdir -p /home/vagrant/.ssh

# Adiciona a chave pública diretamente ao arquivo authorized_keys
echo "$(cat /files/ssh-key.pub)" >> /home/vagrant/.ssh/authorized_keys

# Ajusta as permissões
sudo chown -R vagrant:vagrant /home/vagrant/.ssh

# Reinicia o serviço SSH
sudo service ssh restart
