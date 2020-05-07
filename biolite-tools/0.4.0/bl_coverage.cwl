class: CommandLineTool
id: bl_coverage.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-coverage
