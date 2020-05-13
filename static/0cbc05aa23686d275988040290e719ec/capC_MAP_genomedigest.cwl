class: CommandLineTool
id: capC_MAP_genomedigest.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- genomedigest
