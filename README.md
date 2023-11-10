"# pps-equiv-deploy" 
comandos git:
agregar submodulos:
git submodule add https://github.com/DesApp-2023c1-Grupo-2/PPS-2023c2-Gurpo2-equiv-front.git

git submodule add https://github.com/DesApp-2023c1-Grupo-2/PPS-2023c2-Gurpo2-equiv-back.git

para inicializar su archivo de configuración local:
git submodule init 

para buscar todos los datos de ese proyecto:
git submodule update

 


para agregar una rama especifica:

git submodule set-branch -b Dev PPS-2023c2-Gurpo2-equiv-front
git submodule set-branch --branch dev PPS-2023c2-Gurpo2-equiv-back

se agrega las siguiente linea al archivo .gitmodules en cada submodulo
```sh
branch = dev (dev es el nombre de la rama)

```
despues:
git submodule sync (sincroniza los cambios)

para indicar cual es la rama por defecto:
git config -f .gitmodules submodule.PPS-2023c2-Gurpo2-equiv-back.branch dev
git config -f .gitmodules submodule.PPS-2023c2-Gurpo2-equiv-front.branch Dev

para clonar el proyecto con los submodulos:
git clone --recurse-submodules

para actualizar los submodulos:
git submodule update --remote --merge

para hacer un commit en el proyecto principal y en los submodulos:
git commit -am "mensaje"
git push --recurse-submodules=on-demand

