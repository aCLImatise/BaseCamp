class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cegma2zff.cwl
inputs:
- id: ce_gma_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cegma2zff
