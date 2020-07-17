class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_convert_sp_gff2bed.pl.cwl
inputs:
- id: gff
  doc: ''
  type: File
  inputBinding:
    prefix: --gff
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2bed.pl
