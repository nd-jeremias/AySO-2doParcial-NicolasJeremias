# Verificamos ip - 192.168.56.8/ para AMN - 192.168.56.9/ para desarrollo
ip address show

# Genero llave ssh (en AMN)
ssh-keygen

# Copiar la clave publica y pegarla en el host
cat .ssh/id_rsa.pub

# Pegar la clave en host vmAnsibleDev
vim $HOME/.ssh/authorized.keys

# Podemos verificar si estan conectadas con:
ssh vagrant@192.168.56.9

# Clonamos el repo donde tenemos los archivos para ejecutar
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git

# Modificamos lo necesario en los archivos inventory y playbook.yml

# Ejecutamos ansible
ansible-playbook -i inventory playbook.yml
