class: CommandLineTool
id: dirname.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- dirname
