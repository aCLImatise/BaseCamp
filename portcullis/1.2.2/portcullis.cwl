class: CommandLineTool
id: portcullis.cwl
inputs:
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mode_args
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: '[ --verbose ]      Print extra information'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- portcullis
