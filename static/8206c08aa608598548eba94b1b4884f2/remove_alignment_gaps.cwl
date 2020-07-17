class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_alignment_gaps.cwl
inputs:
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-alignment-gaps
