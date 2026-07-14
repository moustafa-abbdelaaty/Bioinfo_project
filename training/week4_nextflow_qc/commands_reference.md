# Week 4 - Nextflow & QC Reference Commands

```bash
# Test Nextflow
nextflow run hello

# Run a simple pipeline that executes FastQC
nextflow run week4_reference.nf --reads sample.fastq

# List available nf-core pipelines
nf-core list

# Run FastQC directly (without nextflow)
fastqc sample.fastq -o results/

# Run FastQC on multiple files at once
fastqc *.fastq -o results/

# Combine multiple FastQC reports into one summary (multiqc)
multiqc results/
```

## Reading a FastQC report - key points
- **Per base sequence quality:** red or yellow zones mean lower quality in that part of the read (common at the end of Nanopore reads)
- **Overrepresented sequences:** a warning here may mean adapters are still present and need trimming
- **GC content:** should be close to the expected distribution for the organism you're analyzing
