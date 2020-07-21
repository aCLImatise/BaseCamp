class: CommandLineTool
id: ../../../read_hexamer.py.cwl
inputs:
- id: input
  doc: "Read sequence in fasta or fastq format. Multiple fasta/fastq files should\
    \ be separated by ','. For example: read.fq,read2.fa,read3,fa"
  type: string
  inputBinding:
    prefix: --input
- id: ref_genome
  doc: Reference genome sequence in fasta format. Optional
  type: string
  inputBinding:
    prefix: --refgenome
- id: ref_gene
  doc: Reference mRNA sequence in fasta format. Optional
  type: string
  inputBinding:
    prefix: --refgene
outputs: []
cwlVersion: v1.1
baseCommand:
- read_hexamer.py
