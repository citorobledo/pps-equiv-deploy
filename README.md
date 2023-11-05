"# pps-equiv-deploy" 
comandos git:
gregar submodulos:
git submodule add https://github.com/DesApp-2023c1-Grupo-2/PPS-2023c2-Gurpo2-equiv-front.git

git submodule add https://github.com/DesApp-2023c1-Grupo-2/PPS-2023c2-Gurpo2-equiv-back.git

se agrega las siguiente linea al archivo .gitmodules en cada submodulo
```sh
branch = dev (dev es el nombre de la rama)
```
despues:
git submodule sync (sincroniza los cambios)
