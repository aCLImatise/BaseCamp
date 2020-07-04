class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_curesim2rnf.cwl
inputs:
- id: cure_sim_fast_q
  doc: CuReSim FASTQ file (- for standard input).
  type: File
  inputBinding:
    prefix: --curesim-fastq
- id: rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  inputBinding:
    prefix: --rnf-fastq
- id: fa_idx
  doc: FAI index of the reference FASTA file (- for standard input). It can be created
    using 'samtools faidx'.
  type: File
  inputBinding:
    prefix: --faidx
- id: genome_id
  doc: 'Genome ID in RNF (default: 1).'
  type: long
  inputBinding:
    prefix: --genome-id
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- curesim2rnf
