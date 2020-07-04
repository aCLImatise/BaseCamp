class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maq2sam_short.cwl
inputs:
- id: maq_two_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read_group
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- maq2sam-short
