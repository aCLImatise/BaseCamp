class: CommandLineTool
id: selectFasta.cwl
inputs:
- id: fast_q
  doc: 'FILE  (fastq file to select reads from) '
  type: boolean
  inputBinding:
    prefix: -fastq
- id: list
  doc: 'FILE  (list of reads, fastq or fasta) '
  type: boolean
  inputBinding:
    prefix: -list
- id: random
  doc: 'VAL   (number of random reads to be selected from fastq file) '
  type: boolean
  inputBinding:
    prefix: -random
- id: fastq2fasta
  doc: (convert fastq file to fasta)
  type: boolean
  inputBinding:
    prefix: -fastq2fasta
- id: fast_a
  doc: 'FILE  (fasta file to select reads from) '
  type: boolean
  inputBinding:
    prefix: -fasta
- id: fast_a_sel
  doc: (from fasta file select reads in -list, if not flag, reads not in list are
    selected)
  type: boolean
  inputBinding:
    prefix: -fasta_sel
outputs: []
cwlVersion: v1.1
baseCommand:
- selectFasta
