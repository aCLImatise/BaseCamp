class: CommandLineTool
id: ../../../printf.cwl
inputs:
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: argument
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- printf
