class: CommandLineTool
id: ../../../tin.py.cwl
inputs:
- id: input
  doc: 'Input BAM file(s). "-i" takes these input: 1) a single BAM file. 2) "," separated
    BAM files (no spaces allowed). 3) directory containing one or more bam files.
    4) plain text file containing the path of one or more bam files (Each row is a
    BAM file path). All BAM files should be sorted and indexed using samtools. [required]'
  type: string
  inputBinding:
    prefix: --input
- id: ref_gene
  doc: Reference gene model in BED format. Must be strandard 12-column BED file. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: min_cov
  doc: Minimum number of read mapped to a transcript. default=10
  type: long
  inputBinding:
    prefix: --minCov
- id: sample_size
  doc: "Number of equal-spaced nucleotide positions picked from mRNA. Note: if this\
    \ number is larger than the length of mRNA (L), it will be halved until it's smaller\
    \ than L. default=100"
  type: string
  inputBinding:
    prefix: --sample-size
- id: subtract_background
  doc: Subtract background noise (estimated from intronic reads). Only use this option
    if there are substantial intronic reads.
  type: boolean
  inputBinding:
    prefix: --subtract-background
outputs: []
cwlVersion: v1.1
baseCommand:
- tin.py
