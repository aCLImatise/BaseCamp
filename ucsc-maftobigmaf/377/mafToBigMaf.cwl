class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafToBigMaf.cwl
inputs:
- id: referenced_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafToBigMaf
