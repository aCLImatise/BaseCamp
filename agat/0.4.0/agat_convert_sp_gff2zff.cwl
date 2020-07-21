class: CommandLineTool
id: ../../../agat_convert_sp_gff2zff.pl.cwl
inputs:
- id: gff
  doc: ''
  type: File
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --fasta
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2zff.pl
