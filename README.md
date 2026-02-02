# Léeme:

¡Hola! Lee atentamente qué encontrarás en este repositorio.

## Contenido del respositorio: 
Aquí encontrarás los archivos del proyecto grupal del Módulo 3 del equipo 3. 

Por una parte, si quieres tener información de todo el proceso de análisis de datos e información para entender dicho análisis, consulta el archivo "Info_proyecto.md".Encontrarás, además, archivos técnicos de cada fase del proyecto. 

Por otra parte, encontrarás el informe final de la consultoría para RR.HH. 

En cuanto a la visualización, encontrarás una carpeta llamada Tableau con los archivos de trabajo de Tableau. Puedes visualizar el resultado final en Tableau Public: https://public.tableau.com/app/profile/bootcamp.project/viz/TheSimpsonsanlisisxito/PORTADA?publish=yes

## Archivos:


**Carpeta "FINAL": archivos técnicos finales del proyecto**

    - "Fase_1_EDA.ipynb" - EDA. Exploración datos.
    - "Fase_2_limpieza_datos.ipynb". Limpieza datos. Creación CSV limpio.
    - "Fase_3_analisis_descriptivo.ipynb". Visualización y análisis.
    - "Fase_4_codigo_sql.ipynb". Volcado a BB.DD.
    - "Fase_4_bbdd_sql.sql". BB.DD. SQL 
    - "Info_proyecto.md". Información sobre el contenido y estructura del ejercicio, así como consideraciones del análisis.  
    - "src". Carpeta archivos soporte. 

    Archivos CSV a cargar para leer los archivos Jupyter:
    - "hr_raw_data.csv". Datos en bruto. (Fase 1 y 2)
    - "hr_data_clean.csv". Datos limpios. (Fase 3 y 4)
     

**Carpeta "CONSULTORÍA" : informe y presentación consultoría**
- "Informe final". Informe conclusiones consultoría para RR.HH.
- "PPTX conclusiones_equipo 3". 


## Qué librerías necesitas: 

```
import pandas as pd
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np 
```

## Qué encontrarás dentro: 


### Por ejemplo:

Tablas: 

![alt text](image.png)

Código de limpieza:

```python

#NORMALIZACIÓN MARITALSTATUS. 
df['maritalstatus'] = df['maritalstatus'].fillna('unknown').replace('marreid', 'married')


#DISTANCEFROMHOME
numerador = df[df['distancefromhome']<0].shape[0]
denominador = df.shape[0] #ACCEDEMOS AL NÚMERO TOTAL DE FILAS
porcentaje_negativos = (numerador/denominador)*100 #EVITAMOS NÚMEROS MÁGICOS
print(f'porcentaje de negativos que contiene distancefromhome: {porcentaje_negativos}')
df['distancefromhome'] = abs(df['distancefromhome']) #CON ABS TODA LA SERIE FUNCIONA COMO UN VALOR ABSOLUTO
print(f'comprobamos cantidad de negativos en distancefromhome, tras conversion en valor absoluto: {df[df['distancefromhome']<0].shape[0]}')
```


Gráficas para visualizar:

![alt text](<rotacion promocion x rol.png>)
