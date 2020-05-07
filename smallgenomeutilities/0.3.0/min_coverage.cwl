class: CommandLineTool
id: min_coverage.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- min_coverage
