class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getRnaPred.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chromosome
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- getRnaPred
