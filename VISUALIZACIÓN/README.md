# 📊 Proyecto de Análisis en Power BI  
## HR Analytics – Servicio de Consultoría Internacional

---

## 🏢 Contexto del Proyecto

Este proyecto se desarrolla simulando un escenario real de consultoría profesional.

Actuamos como una **consultora española especializada en análisis de datos y Business Intelligence**, prestando servicios a una empresa cliente ubicada en Estados Unidos.

Por este motivo:

- La documentación técnica del proyecto está redactada en **español**.
- El modelo de datos, métricas y dashboards en Power BI están desarrollados en **inglés**, ya que el cliente final es una empresa estadounidense.
- El enfoque del análisis sigue estándares profesionales de consultoría en BI: limpieza estructurada de datos, modelado eficiente y visualizaciones orientadas a la toma de decisiones.

---

# 🔄 Documentación del Proceso de Transformación en Power BI

> Este documento se actualizará progresivamente a medida que se realicen transformaciones en Power Query y en el modelo de datos.

---

## 1️⃣ Carga de Datos

### Fuente
- **Tipo de archivo:** CSV  
- **Nombre del archivo:** `hr_data_clean.csv`  
- **Método de importación:** Power BI Desktop → File → Get Data → Text/CSV → Transform Data

### Observaciones iniciales del dataset
- **Número de columnas:** 41  
- **Número de registros:** 1614 
- **Codificación:** 1252: Western European (Windows)  
- **Separador:** Coma  

---

## 2️⃣ Organización de Columnas

- Se movió la columna `employeenumber` al inicio del dataset.  
- Se trasladaron todas las columnas con valores en `$` al final del dataset.  

---

## 3️⃣ Cambio de Valores y Renombrado de Columnas

| Nombre original      | Nuevo nombre       | Transformación / Justificación                     |
|---------------------|------------------|--------------------------------------------------|
| `attrition`         | `attrition` | `yes → ex-employee`, `no → employee`           |
| `remote work`       | `workplace`       | `true → remote`, `false → on-site`, dato **text** |
| `standard hours`    | `workinghours`    | cambio de nombre para mayor claridad            |

---

## 4️⃣ Eliminación de Columnas

> Columnas eliminadas por no aportar valor analítico o contener casi ningún dato:

| Columna             | Motivo de eliminación |
|--------------------|----------------------|
| `numberchildren`    | Sin datos            |
| `yearsincurrentrole`| Pocos datos          |
| `employeecount`     | No aporta valor      |
| `over18`            | No aporta valor      |
| `sameasmontlyincome`| Duplicada de `monthlyincome` |

---

## 5️⃣ Aplicación de Transformaciones

- Se aplicaron todos los cambios y se cerró Power Query (`Apply and Close`).  
- Se cargó un tema de colores personalizado (`Json`) en **View → Browse for Themes**.  
- Guardado inicial como: `dashboard_rotation_analysis.pbix`


---

## 6️⃣ Creación de Medidas DAX (Campos Calculados)

> Se crearon las siguientes medidas para analizar la rotación (attrition) y los niveles de satisfacción dentro de la organización.


🔹 Métricas de Rotación

```DAX
left company = CALCULATE(COUNTROWS('hr_data_clean'),
                        'hr_data_clean'[attrition] = "ex-employee")
```

```DAX
PT left = CALCULATE([left company],
                    'hr_data_clean'[workinghours] = "part time")
```

```DAX
% PT left = DIVIDE([PT left],[left company],0)
```

```DAX
attrition rate = DIVIDE(CALCULATE(COUNTROWS('hr_data_clean'),
                        'hr_data_clean'[attrition] = "ex-employee"),
                        COUNTROWS('hr_data_clean'))
```
---

🔹 Medidas de Satisfacción Promedio

```DAX
avg env sat = AVERAGE('hr_data_clean'[environmentsatisfaction])
```

```DAX
avg job invol = AVERAGE('hr_data_clean'[jobinvolvement])
```

```DAX
avg job sat = AVERAGE('hr_data_clean'[jobsatisfaction])
```

```DAX
avg relationship sat = AVERAGE('hr_data_clean'[relationshipsatisfaction])
```

```DAX
avg work life balance = AVERAGE('hr_data_clean'[worklifebalance])
```

```DAX
overall sat = DIVIDE([A avg env sat] + [A avg job invol] + [A avg job sat] +
                    [A avg relationship sat] + [A avg work life balance], 5)
```
         
---

🔹 Añade aquí más campos calculados...