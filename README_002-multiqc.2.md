__Date:__ Mayo 2018  
__Author:__ Mariana Flores-Torres  
__Location:__ `/labs/crve-fabian/vesiculas/002-multiqc.2/`  

---
#002-multiqc.2/  
MultiQC v1.4  
[Informacion de MultiQC] (http://multiqc.info/)   

Para generar un reporte del analisis de control de calidad 
realizado con fastQC en multiples archivos `.fastqc`  

```
$ multiqc data/ -o outdir/
```

En este directorio:  
`data/` contiene el enlace a los resultados obtenidos en `001-fastqc`.    

`raw-fastq/` contiene los resultados del analisis con `MultiQC` de 
los archivos `.fastq` antes del preprocesamiento.

`trim2-fastq/` contiene los resultados del analisis con `MultiQC` de
los archivos a los que se les cortaron los adaptadores.
