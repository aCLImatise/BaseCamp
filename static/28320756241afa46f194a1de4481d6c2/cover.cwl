class: CommandLineTool
id: cover.cwl
inputs:
- id: test
  doc: ''
  type: boolean
  inputBinding:
    prefix: -test
outputs: []
cwlVersion: v1.1
baseCommand:
- cover
