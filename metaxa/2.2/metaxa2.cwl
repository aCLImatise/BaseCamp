class: CommandLineTool
id: metaxa2.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: cpu
  doc: ''
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- metaxa2
