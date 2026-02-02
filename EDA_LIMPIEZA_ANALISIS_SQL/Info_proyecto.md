## Información sobre el contenido del proyecto:

### Introducción

Este proyecto es un ejercicio académico desarrollado para el Módulo 3: Optimización de Talento del Bootcamp Data Analytics de Adalab.

###  El Problema

El objetivo principal de negocio es reducir la rotación de empleados y mejorar la satisfacción laboral en ABC Corporation, una consultora tecnológica especializada en IA. La retención de talento es clave para su éxito a largo plazo.

### ¿Quién es ABC Corporation?

Es una consultora tecnológica de California (fundada en 1980) que desarrolla soluciones de IA/Machine Learning para optimizar procesos empresariales.

### Objetivos

Este proyecto se centra en objetivos técnicos y de trabajo en equipo:

1. Consolidar conocimientos de Python, SQL, así como EDA, limpieza y visualización de datos.

2. Utilizar control de versiones en equipo para aprender las ventajas y conflictos de Git.

3. Implementar Scrum como marco de referencia, basándose en los valores Agile para la mejora continua.

4. Mejorar la comunicación entre los miembros del equipo.

5. Mejorar las habilidades de comunicación en público al exponer el proyecto en la sesión final.

### Fases del proyecto y estructura:

El proyecto se desarrolla en cinco fases secuenciales:

**Fase 1: Análisis Exploratorio de Datos (EDA):**

- Objetivo: Entender la estructura y características del conjunto de datos.

- Tareas Clave: Realizar un análisis detallado para familiarizarse con los datos disponibles.

**Fase 2: Transformación de los Datos:**
- Objetivo: Preparar y limpiar los datos para el análisis.

- Tareas Clave: Corregir tipos de datos (ej. DailyRate a numérico), estandarizar categorías (ej. Gender de 0/1 a Male/Female), limpiar inconsistencias (errores tipográficos, valores negativos) y manejar duplicados.

**Fase 3: Visualización de los Datos:**
- Objetivo: Informar a la empresa con insights clave.

- Tareas Clave: Crear visualizaciones en Python para generar un informe descriptivo del contexto general de la empresa.

**Fase 4: Diseño e Inserción de Datos en BBDD (Estructura):**

Objetivo: Estructurar los datos en una Base de Datos Relacional.

Tareas Clave: Diseñar la arquitectura de la BBDD (tablas, relaciones, claves) e insertar los datos iniciales.

**Fase 5: Creación de una ETL (Bonus):**
- Objetivo: Automatizar la gestión de datos.

- Tareas Clave: Crear un script en Python (organizado en funciones) para automatizar la Extracción, Transformación (Fase 2) y Carga de datos a la BBDD.

## Datos Clave para el Análisis

El análisis se centra en 36 características del empleado, siendo las más relevantes:

Attrition: Si el empleado dejó la empresa (Sí/No). (Variable objetivo)

Satisfacción: Columnas como JobSatisfaction, EnvironmentSatisfaction y RelationshipSatisfaction.

Compensación: Columnas como MonthlyIncome, DailyRate y Salary.

Experiencia: Columnas como TOTALWORKINGYEARS y YearsAtCompany.

Condiciones: Columnas como OverTime y RemoteWork.


## Todos los datos. Columnas: 

- Age: Edad del empleado.

- Attrition: Indica si el empleado dejó la empresa (Yes/No).

- BusinessTravel: Frecuencia de viajes laborales (e.g., travel_rarely).

- DailyRate: Tarifa diaria estimada para clientes, calculada en base al salario.

- Department: Departamento en el que trabaja el empleado.

- DistanceFromHome: Distancia en millas o kilómetros desde el hogar al trabajo.

- Education: Nivel educativo del empleado en escala numérica.

- EducationField: Campo de estudio académico del empleado.

- employeecount: Valor constante de "1", indicando un solo empleado por registro.

- employeenumber: Número de identificación del empleado.

- EnvironmentSatisfaction: Nivel de satisfacción con el ambiente laboral.

- Gender: Género del empleado.

- HourlyRate: Tarifa por hora calculada.

- JobInvolvement: Nivel de compromiso del empleado en el trabajo.

- JobLevel: Nivel jerárquico del puesto del empleado.

- JobRole: Función o rol específico del empleado.

- JobSatisfaction: Satisfacción general en el puesto.

- MaritalStatus: Estado civil (e.g., Single, Married).

- MonthlyIncome: Ingreso mensual estimado en base al salario anual.

- MonthlyRate: Tarifa mensual estimada en función de la tarifa diaria.

- NUMCOMPANIESWORKED: Número de empresas previas en las que ha trabajado.

- OverTime: Indica si el empleado trabaja horas extras (Yes/No).

- PercentSalaryHike: Incremento porcentual en el salario.

- PerformanceRating: Evaluación de desempeño en una escala numérica.

- RelationshipSatisfaction: Satisfacción con relaciones interpersonales en el trabajo.

- StandardHours: Clasificación de jornada (Full Time/Part Time).

- StockOptionLevel: Nivel de opciones sobre acciones asignadas.

- TOTALWORKINGYEARS: Años totales de experiencia laboral.

- TrainingTimesLastYear: Número de sesiones de entrenamiento en el último año.

- WORKLIFEBALANCE: Nivel de balance entre vida personal y laboral.

- YearsAtCompany: Años en la empresa actual.

- YearsInCurrentRole: Años en el rol actual.

- YearsSinceLastPromotion: Años desde la última promoción recibida.

- YEARSWITHCURRMANAGER: Años trabajando con el mismo gerente.

- DateBirth: Año de nacimiento del empleado.

- Salary: Salario anual calculado para el empleado.

- RoleDepartament: Combinación de rol y departamento.

- NUMBERCHILDREN: Número de hijos del empleado (si está disponible).

- RemoteWork: Indica si el empleado trabaja de forma remota (Yes/No).