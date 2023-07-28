Run samtools flagstat on a set of CRAM files. Generate a MultiQC report from the output.

To run:
```
nextflow run https://github.com/grbot/multiqc --input "/path/*"
```

or

```
nextflow run https://github.com/grbot/multiqc --input "1.flagstat 2.flagstat 3.flagstat"
```
