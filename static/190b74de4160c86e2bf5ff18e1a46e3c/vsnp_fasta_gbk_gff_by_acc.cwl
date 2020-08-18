class: CommandLineTool
id: ../../../vsnp_fasta_gbk_gff_by_acc.py.cwl
inputs:
- id: accession
  doc: NCBI chromosome number
  type: string
  inputBinding:
    prefix: --accession
- id: fast_a
  doc: get FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: gbk
  doc: get gbk file
  type: boolean
  inputBinding:
    prefix: --gbk
- id: gff
  doc: get gff file
  type: boolean
  inputBinding:
    prefix: --gff
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_fasta_gbk_gff_by_acc.py
