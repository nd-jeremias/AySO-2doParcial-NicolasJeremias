#Crear Particiones con fdisk
sudo fdisk /dev/sdc
# dentro de fdisk
# n -> Nuevo
# p/e -> Particion/Extendida
# enter -> Por defecto numero de particion
# enter -> por defecto sector de inicio
# +1G/+1.5G ->  Tamaño de la particion

# define el disco como swap
sudo mkswap /dev/sdc1
# Montar el disco como swap
sudo swapon /dev/sdc1

# Cambiar sist de archivos a LVM
sudo fdisk /dev/sdc
# t -> cambiar el sistema de archivos de una partición ext4
# 2 -> elegimos partición 2 (Repetir para c/particion)
# 8e -> elige fs linux lvm
# w -> Guardar y salir

# Crear pv(physical volume) p/c/particion
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6

# Crear grupo [vgAdmin] a partir de los discos sdc2 y sdc3
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3

# Crear grupo [vgDevelopers] a partir de los discos sdc5 y sdc6
sudo vgcreate  vgDevelopers /dev/sdc5 /dev/sdc6

# Crea un lv(Logic Volume) de 2GB a partir de vgAdmin y lo llama lvAdmin
sudo lvcreate -L 2G vgAdmin -n lvAdmin
