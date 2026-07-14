#!/usr/bin/env nextflow
// ==============================================================
// Week 4 - Nextflow Reference Pipeline (complete working version)
// A simple pipeline that runs FastQC on a fastq file
// Run: nextflow run week4_reference.nf --reads path/to/file.fastq
// ==============================================================

nextflow.enable.dsl=2

params.reads = null
params.outdir = "results"

process RUN_FASTQC {
    publishDir params.outdir, mode: 'copy'

    input:
    path fastq_file

    output:
    path "*.html"
    path "*.zip"

    script:
    """
    fastqc ${fastq_file}
    """
}

workflow {
    if (params.reads == null) {
        error "Please specify the reads file: --reads path/to/file.fastq"
    }

    fastq_ch = Channel.fromPath(params.reads)
    RUN_FASTQC(fastq_ch)
}
