# Master2021
Análisis de prestigio de las comunidades Twitter ecuatorianas, entre la precampaña y primera vuelta electoral de los candidatos a presidentes:@ecuarauz, @LassoGuillermo, @juanfervelasco y @yakuperezg mediante la “Ley de Benford” 
###
Por Alejandro Chiriboga
Previo a la obtención del título de Master en Comunicación,Marketing Digital de la Universidad Autónoma de Barcelona UAB

# Detalles a ser explicados 
El script tfm-script.R está parametrisado para ejecutar de acuerdo a los directorios establecido por el autor, es prioridad del analista modificarlos  al interés pertinente.
# Detalles técnicos

Es pertinente describir el contexto técnico, necesario para poder implementar la metodología descrita.Los recursos básicos necesarios, para el servidor virtual, son: 
servidor Ubuntu 18.04.5 LTS (Máquina Virtual), 
Almacenamiento 25GB, 
5481RAM
PHP 7.4.13 (extensiones:php7.4-cli, php7.4-common, php7.4-curl, php7.4-fpm, php7.4-json, php7.4-mbstring, php7.4-mysql, php7.4-opcache, php7.4-readline, php7.4-xml)
La herramienta a ser instalada en el servidor virtual es: 
https://github.com/digitalmethodsinitiative/dmi-tcat/wiki/Installation-Guide
Un recurso adicional, de igual importancia que el primero es la instalación del programa Rstudio en la máquina local; las características de la máquina local a ser utilizada son : 
Memoria de 32GB
Procesador I7
Almacenamiento 1T
Sistema Operativo Fedora33 (Linux) 
Python 3.9.0
R  4.0.3
La herramienta a ser implementada en la máquina local es: 
RStudio 1.3.1093

La metodología propuesta tiene una actividad iterativa con cada una de las campañas desarrolladas por los candidatos, ajustada a cumplir con los estándares de la Ley de Benford y a responder las inquietudes planteadas previamente en el presente TFM por lo que se harán ajustes de variables más no estructurales. El término campaña, en el presente análisis, hará mención a los Hashtags en su conjunto utilizados por cada candidato en su cuenta twitter. 



# Calibración del Script
Planteadas las hipótesis se procede a la extracción y tabulación de los dígitos, se abre el archivo “WHO COVID-19 global table data January 12th 2021at2.19.16AM.csv”; se explora las variables con la que se dispone para contestar las preguntas planteadas en el TFM Análisis de prestigio de las comunidades Twitter ecuatorianas, entre la precampaña y primera vuelta electoral de los candidatos a presidentes:@ecuarauz, @LassoGuillermo, @juanfervelasco y @yakuperezg mediante la “Ley de Benford” 
en el capítulo "Marco Metodológico"
