---
# mk-multiqc

[MultiQC v1.4](http://multiqc.info/)   

`mkfile` to create a single report for multiple quality control analysis files generated with [FastQC v0.11.4](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/).  

To test mkfile:
```
bin/targets | head -n1 | xargs mk
```
:  
`data/` folder contains `.fastqc_html` and `.fastqc.zip` files from quality control analisys.  
MultiQC reports will be output to `results/` dir.

---
## Requirements
* 9base
* multiqc
