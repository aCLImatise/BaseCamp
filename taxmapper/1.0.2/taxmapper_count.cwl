class: CommandLineTool
id: taxmapper_count.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: out1
  doc: ''
  type: string
  inputBinding:
    prefix: --out1
- id: out2
  doc: ''
  type: string
  inputBinding:
    prefix: --out2
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- count
