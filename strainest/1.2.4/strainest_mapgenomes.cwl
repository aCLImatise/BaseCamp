class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/strainest_mapgenomes.cwl
inputs:
- id: genomes_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mapped
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- strainest
- mapgenomes
