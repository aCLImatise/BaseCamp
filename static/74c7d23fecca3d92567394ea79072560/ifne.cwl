class: CommandLineTool
id: ifne.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- ifne
