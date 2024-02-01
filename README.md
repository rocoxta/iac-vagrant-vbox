# Projeto Vagrant com VirtualBox

Este projeto Vagrant em conjunto com o VirtualBox configura um ambiente multi-máquina com um servidor de banco de dados (db) e um servidor web (web) utilizando boxes do Ubuntu Focal64. A configuração inclui a configuração SSH, um servidor MySQL para o banco de dados e um servidor web Apache para a máquina web. Além disso, destaca-se que será possível visualizar uma página web hospedada no endereço do servidor Apache configurado na máquina virtual web.

## Estrutura do repositório:
```
├── LICENSE
├── README.md
├── Vagrantfile                  >> Arquivo Vagrantfile
├── provision_db.sh              >> Arquivo provisioner da máquina 'db'
├── provision_web.sh             >> Arquivo provisioner da máquina 'web'            
└── ssh-key      
└── files                
 	├── html/                >> Arquivos da página web, que será possível visualizar no endereço do servidor apache.
	└── ssh-key.pub          >> Chave SSH
```

## Requisitos
- [Ubuntu](https://ubuntu.com)
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Preparação do Ambiente

### Instalação do Vagrant:

```bash
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install vagrant
$ vagrant --version

```
### Instalação do VirtualBox:

```bash
$ sudo apt update
$ sudo apt install virtualbox
```
## Como utilizar?
1- Clone o repositório.
```bash
$ git clone https://github.com/rocoxta/iac-vagrant-vbox.git
$ cd projeto-vagrant
```
2- Inicie as Máquinas Virtuais:
```bash
$ vagrant up
```
3- Acesse as Máquinas Virtuais com a chave ssh:
- Máquina 'db':
```bash
$ ssh -i key-acess vagrant@192.168.0.65
```
- Máquina 'web':
```bash
$ ssh -i key-acess vagrant@192.168.0.66
```
4- Acesso a página web configurada no endereço do Servidor Web:
- O servidor web estará acessível em http://192.168.0.66:8080 a partir do host local.

## Detalhes de Configuração
- A máquina 'db' possui MySQL Server instalado e configurado. Um usuário 'rodrigocoal' é criado com a senha '123'.
- A máquina 'web' possui Apache2 instalado. Os arquivos do diretório files/html/ são copiados para o diretório de exibição do servidor web.

## Observações
- Certifique-se de configurar os endereços IP para um disponível em sua rede local e, se necessário, faça a criação das chaves SSH.

## Referências
- [Vagrant box: Ubuntu/focal64](https://app.vagrantup.com/ubuntu/boxes/focal64)
- [Shell Provisioner](https://developer.hashicorp.com/vagrant/docs/provisioning/shell)
- [Basic Usage of Networking](https://developer.hashicorp.com/vagrant/docs/networking/basic_usage)
- [Synced-folders](https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage)
- [File Provisioner](https://developer.hashicorp.com/vagrant/docs/provisioning/file)
## Autor
👤 **Rodrigo Costa**
