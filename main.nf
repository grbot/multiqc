#!/usr/bin/env nextflow

Channel.fromPath(params.input.tokenize(' ')).set{multiqc_input}

if (params.input == null) {
    exit 1, helpMessage("ERROR: no --input specified")
}

process run_multiqc{
    label 'multiqc'

    input:
        file('*') from multiqc_input.collect()

    output:
        file('multiqc_report.html')

    """
    multiqc .
    """
}
