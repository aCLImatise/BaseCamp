class: CommandLineTool
id: ../../../smoother.cwl
inputs:
- id: format
  doc: ''
  type: string
  inputBinding:
    prefix: --format
- id: file
  doc: ''
  type: string
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- smoother
