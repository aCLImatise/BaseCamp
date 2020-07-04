class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compareMS2.cwl
inputs:
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ''
  type: long
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- compareMS2
